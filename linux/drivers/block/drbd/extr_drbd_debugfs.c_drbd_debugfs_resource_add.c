
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_resource {char* name; struct dentry* debugfs_res_in_flight_summary; struct dentry* debugfs_res; struct dentry* debugfs_res_connections; struct dentry* debugfs_res_volumes; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct drbd_resource*,int *) ;
 struct dentry* drbd_debugfs_resources ;
 int in_flight_summary_fops ;

void drbd_debugfs_resource_add(struct drbd_resource *resource)
{
 struct dentry *dentry;

 dentry = debugfs_create_dir(resource->name, drbd_debugfs_resources);
 resource->debugfs_res = dentry;

 dentry = debugfs_create_dir("volumes", resource->debugfs_res);
 resource->debugfs_res_volumes = dentry;

 dentry = debugfs_create_dir("connections", resource->debugfs_res);
 resource->debugfs_res_connections = dentry;

 dentry = debugfs_create_file("in_flight_summary", 0440,
         resource->debugfs_res, resource,
         &in_flight_summary_fops);
 resource->debugfs_res_in_flight_summary = dentry;
}
