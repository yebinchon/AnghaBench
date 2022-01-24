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
struct drbd_device {int /*<<< orphan*/  debugfs_vol; int /*<<< orphan*/  debugfs_vol_ed_gen_id; int /*<<< orphan*/  debugfs_vol_data_gen_id; int /*<<< orphan*/  debugfs_vol_resync_extents; int /*<<< orphan*/  debugfs_vol_act_log_extents; int /*<<< orphan*/  debugfs_vol_oldest_requests; int /*<<< orphan*/  debugfs_minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct drbd_device *device)
{
	FUNC0(&device->debugfs_minor);
	FUNC0(&device->debugfs_vol_oldest_requests);
	FUNC0(&device->debugfs_vol_act_log_extents);
	FUNC0(&device->debugfs_vol_resync_extents);
	FUNC0(&device->debugfs_vol_data_gen_id);
	FUNC0(&device->debugfs_vol_ed_gen_id);
	FUNC0(&device->debugfs_vol);
}