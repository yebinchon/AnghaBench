#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ disk; } ;
struct drbd_device {TYPE_1__ state; int /*<<< orphan*/  local_cnt; } ;
typedef  enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;

/* Variables and functions */
 scalar_t__ D_DISKLESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*) ; 

__attribute__((used)) static inline int FUNC2(struct drbd_device *device, enum drbd_disk_state mins)
{
	int io_allowed;

	/* never get a reference while D_DISKLESS */
	if (device->state.disk == D_DISKLESS)
		return 0;

	FUNC0(&device->local_cnt);
	io_allowed = (device->state.disk >= mins);
	if (!io_allowed)
		FUNC1(device);
	return io_allowed;
}