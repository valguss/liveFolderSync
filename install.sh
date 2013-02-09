#!/bin/sh
SCRIPT=$(readlink -f $0)
INSTALLPATH=`dirname $SCRIPT`

yum install inotify-tools

ln -s $INSTALLPATH/init /etc/init.d/liveFolderSync
ln -s $INSTALLPATH/liveFolderSync /usr/sbin/liveFolderSync

chkconfig liveFolderSync on

cat $INSTALLPATH/README.mediawiki
