
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drbd_debugfs_minors ;
 int drbd_debugfs_remove (int *) ;
 int drbd_debugfs_resources ;
 int drbd_debugfs_root ;
 int drbd_debugfs_version ;

void drbd_debugfs_cleanup(void)
{
 drbd_debugfs_remove(&drbd_debugfs_resources);
 drbd_debugfs_remove(&drbd_debugfs_minors);
 drbd_debugfs_remove(&drbd_debugfs_version);
 drbd_debugfs_remove(&drbd_debugfs_root);
}
