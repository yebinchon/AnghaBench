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
struct TYPE_2__ {int disk; } ;
struct drbd_device {int /*<<< orphan*/  misc_wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  local_cnt; TYPE_1__ state; } ;
typedef  enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;

/* Variables and functions */
 int /*<<< orphan*/  DESTROY_DISK ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int D_DISKLESS ; 
 int D_FAILED ; 
 int /*<<< orphan*/  GOING_DISKLESS ; 
 int /*<<< orphan*/  GO_DISKLESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  local ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct drbd_device *device)
{
	enum drbd_disk_state disk_state = device->state.disk;
	/* We must check the state *before* the atomic_dec becomes visible,
	 * or we have a theoretical race where someone hitting zero,
	 * while state still D_FAILED, will then see D_DISKLESS in the
	 * condition below and calling into destroy, where he must not, yet. */
	int i = FUNC2(&device->local_cnt);

	/* This may be called from some endio handler,
	 * so we must not sleep here. */

	FUNC1(local);
	FUNC0(device, i >= 0);
	if (i == 0) {
		if (disk_state == D_DISKLESS)
			/* even internal references gone, safe to destroy */
			FUNC3(device, DESTROY_DISK);
		if (disk_state == D_FAILED)
			/* all application IO references gone. */
			if (!FUNC4(GOING_DISKLESS, &device->flags))
				FUNC3(device, GO_DISKLESS);
		FUNC5(&device->misc_wait);
	}
}