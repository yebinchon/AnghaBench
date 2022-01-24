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
struct loop_device {scalar_t__ lo_state; int /*<<< orphan*/  lo_flags; int /*<<< orphan*/  lo_refcnt; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  LO_FLAGS_AUTOCLEAR ; 
 scalar_t__ Lo_bound ; 
 scalar_t__ Lo_rundown ; 
 int FUNC0 (struct loop_device*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct loop_device *lo)
{
	int err;

	err = FUNC2(&loop_ctl_mutex);
	if (err)
		return err;
	if (lo->lo_state != Lo_bound) {
		FUNC3(&loop_ctl_mutex);
		return -ENXIO;
	}
	/*
	 * If we've explicitly asked to tear down the loop device,
	 * and it has an elevated reference count, set it for auto-teardown when
	 * the last reference goes away. This stops $!~#$@ udev from
	 * preventing teardown because it decided that it needs to run blkid on
	 * the loopback device whenever they appear. xfstests is notorious for
	 * failing tests because blkid via udev races with a losetup
	 * <dev>/do something like mkfs/losetup -d <dev> causing the losetup -d
	 * command to fail with EBUSY.
	 */
	if (FUNC1(&lo->lo_refcnt) > 1) {
		lo->lo_flags |= LO_FLAGS_AUTOCLEAR;
		FUNC3(&loop_ctl_mutex);
		return 0;
	}
	lo->lo_state = Lo_rundown;
	FUNC3(&loop_ctl_mutex);

	return FUNC0(lo, false);
}