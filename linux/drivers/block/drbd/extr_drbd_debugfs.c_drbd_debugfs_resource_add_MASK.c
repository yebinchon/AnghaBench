#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drbd_resource {char* name; struct dentry* debugfs_res_in_flight_summary; struct dentry* debugfs_res; struct dentry* debugfs_res_connections; struct dentry* debugfs_res_volumes; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 struct dentry* FUNC1 (char*,int,struct dentry*,struct drbd_resource*,int /*<<< orphan*/ *) ; 
 struct dentry* drbd_debugfs_resources ; 
 int /*<<< orphan*/  in_flight_summary_fops ; 

void FUNC2(struct drbd_resource *resource)
{
	struct dentry *dentry;

	dentry = FUNC0(resource->name, drbd_debugfs_resources);
	resource->debugfs_res = dentry;

	dentry = FUNC0("volumes", resource->debugfs_res);
	resource->debugfs_res_volumes = dentry;

	dentry = FUNC0("connections", resource->debugfs_res);
	resource->debugfs_res_connections = dentry;

	dentry = FUNC1("in_flight_summary", 0440,
				     resource->debugfs_res, resource,
				     &in_flight_summary_fops);
	resource->debugfs_res_in_flight_summary = dentry;
}