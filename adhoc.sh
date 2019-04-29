#!/bin/bash
ansible node1,node2 -m copy -a "src=/usr/local/bin/runme.sh dest=/usr/local/runme.sh mode=0755 owner=ansible group=ansible" -i /opt/ansible/dynamic/inventory -b -u ansible
ansible node1,node2 -m command -a "sh /usr/local/runme.sh" -i /opt/ansible/dynamic/inventory -b -u ansible

