
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_resource {int debugfs_res; int debugfs_res_volumes; int debugfs_res_connections; int debugfs_res_in_flight_summary; } ;


 int drbd_debugfs_remove (int *) ;

void drbd_debugfs_resource_cleanup(struct drbd_resource *resource)
{

 drbd_debugfs_remove(&resource->debugfs_res_in_flight_summary);
 drbd_debugfs_remove(&resource->debugfs_res_connections);
 drbd_debugfs_remove(&resource->debugfs_res_volumes);
 drbd_debugfs_remove(&resource->debugfs_res);
}
