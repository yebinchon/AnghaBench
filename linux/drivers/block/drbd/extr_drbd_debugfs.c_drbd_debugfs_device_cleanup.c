
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int debugfs_vol; int debugfs_vol_ed_gen_id; int debugfs_vol_data_gen_id; int debugfs_vol_resync_extents; int debugfs_vol_act_log_extents; int debugfs_vol_oldest_requests; int debugfs_minor; } ;


 int drbd_debugfs_remove (int *) ;

void drbd_debugfs_device_cleanup(struct drbd_device *device)
{
 drbd_debugfs_remove(&device->debugfs_minor);
 drbd_debugfs_remove(&device->debugfs_vol_oldest_requests);
 drbd_debugfs_remove(&device->debugfs_vol_act_log_extents);
 drbd_debugfs_remove(&device->debugfs_vol_resync_extents);
 drbd_debugfs_remove(&device->debugfs_vol_data_gen_id);
 drbd_debugfs_remove(&device->debugfs_vol_ed_gen_id);
 drbd_debugfs_remove(&device->debugfs_vol);
}
