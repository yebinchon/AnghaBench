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
struct drbd_resource {int /*<<< orphan*/  debugfs_res; int /*<<< orphan*/  debugfs_res_volumes; int /*<<< orphan*/  debugfs_res_connections; int /*<<< orphan*/  debugfs_res_in_flight_summary; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct drbd_resource *resource)
{
	/* it is ok to call debugfs_remove(NULL) */
	FUNC0(&resource->debugfs_res_in_flight_summary);
	FUNC0(&resource->debugfs_res_connections);
	FUNC0(&resource->debugfs_res_volumes);
	FUNC0(&resource->debugfs_res);
}