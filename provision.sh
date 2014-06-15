#!/usr/bin/env bash

# Issue: This configures git for root user, not vagrant
echo "Setting up git..."
#git config --global user.name "Takashi Yoshida"
#git config --global user.email "takashi@takashiyoshida.org"

echo "Cloning my-boxen from GitHub..."
echo "sudo mkdir -p /opt/boxen"
mkdir -p /opt/boxen
# ${USER} => root so we need to hardcode `vagrant`
BOXEN_OWNER=vagrant
echo "sudo chown ${BOXEN_OWNER}:staff /opt/boxen"
chown ${BOXEN_OWNER}:staff /opt/boxen
echo "ls -l /opt"
ls -l /opt
# Issue: `repo` will be owned by root, not vagrant
echo "git clone https://github.com/takashiyoshida/my-boxen.git /opt/boxen/repo"
#git clone https://github.com/takashiyoshida/my-boxen.git /opt/boxen/repo
