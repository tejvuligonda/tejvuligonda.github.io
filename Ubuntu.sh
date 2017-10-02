#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y vim git tree curl
if ( lspci | grep 'VirtualBox' >/dev/null );
    then sudo apt-get install -y virtualbox-guest-dkms openssh-server;
fi
mkdir -p ~/Developer/public ~/Developer/private ~/Developer/test
git clone https://github.com/tejvuligonda/OS-Starter-Packs.git ~/Developer/public/OS-Starter-Packs
cd ~/Developer/public/OS-Starter-Packs
