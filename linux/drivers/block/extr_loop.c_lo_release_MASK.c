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
struct loop_device {int lo_flags; scalar_t__ lo_state; int /*<<< orphan*/  lo_queue; int /*<<< orphan*/  lo_refcnt; } ;
struct gendisk {struct loop_device* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int LO_FLAGS_AUTOCLEAR ; 
 scalar_t__ Lo_bound ; 
 scalar_t__ Lo_rundown ; 
 int /*<<< orphan*/  FUNC0 (struct loop_device*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gendisk *disk, fmode_t mode)
{
	struct loop_device *lo;

	FUNC4(&loop_ctl_mutex);
	lo = disk->private_data;
	if (FUNC1(&lo->lo_refcnt))
		goto out_unlock;

	if (lo->lo_flags & LO_FLAGS_AUTOCLEAR) {
		if (lo->lo_state != Lo_bound)
			goto out_unlock;
		lo->lo_state = Lo_rundown;
		FUNC5(&loop_ctl_mutex);
		/*
		 * In autoclear mode, stop the loop thread
		 * and remove configuration after last close.
		 */
		FUNC0(lo, true);
		return;
	} else if (lo->lo_state == Lo_bound) {
		/*
		 * Otherwise keep thread (if running) and config,
		 * but flush possible ongoing bios in thread.
		 */
		FUNC2(lo->lo_queue);
		FUNC3(lo->lo_queue);
	}

out_unlock:
	FUNC5(&loop_ctl_mutex);
}