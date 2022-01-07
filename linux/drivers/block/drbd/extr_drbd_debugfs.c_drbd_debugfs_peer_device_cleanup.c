
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_peer_device {int debugfs_peer_dev; } ;


 int drbd_debugfs_remove (int *) ;

void drbd_debugfs_peer_device_cleanup(struct drbd_peer_device *peer_device)
{
 drbd_debugfs_remove(&peer_device->debugfs_peer_dev);
}
