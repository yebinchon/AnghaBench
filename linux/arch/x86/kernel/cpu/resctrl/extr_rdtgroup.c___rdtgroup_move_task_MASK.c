#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {scalar_t__ closid; int /*<<< orphan*/  rmid; } ;
struct TYPE_6__ {int /*<<< orphan*/  func; } ;
struct task_move_callback {TYPE_3__ work; struct rdtgroup* rdtgrp; } ;
struct TYPE_5__ {int /*<<< orphan*/  rmid; TYPE_1__* parent; } ;
struct rdtgroup {scalar_t__ type; scalar_t__ closid; TYPE_2__ mon; int /*<<< orphan*/  waitcount; } ;
struct TYPE_4__ {scalar_t__ closid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RDTCTRL_GROUP ; 
 scalar_t__ RDTMON_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_move_callback*) ; 
 struct task_move_callback* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  move_myself ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct task_struct*,TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC6(struct task_struct *tsk,
				struct rdtgroup *rdtgrp)
{
	struct task_move_callback *callback;
	int ret;

	callback = FUNC3(sizeof(*callback), GFP_KERNEL);
	if (!callback)
		return -ENOMEM;
	callback->work.func = move_myself;
	callback->rdtgrp = rdtgrp;

	/*
	 * Take a refcount, so rdtgrp cannot be freed before the
	 * callback has been invoked.
	 */
	FUNC1(&rdtgrp->waitcount);
	ret = FUNC5(tsk, &callback->work, true);
	if (ret) {
		/*
		 * Task is exiting. Drop the refcount and free the callback.
		 * No need to check the refcount as the group cannot be
		 * deleted before the write function unlocks rdtgroup_mutex.
		 */
		FUNC0(&rdtgrp->waitcount);
		FUNC2(callback);
		FUNC4("Task exited\n");
	} else {
		/*
		 * For ctrl_mon groups move both closid and rmid.
		 * For monitor groups, can move the tasks only from
		 * their parent CTRL group.
		 */
		if (rdtgrp->type == RDTCTRL_GROUP) {
			tsk->closid = rdtgrp->closid;
			tsk->rmid = rdtgrp->mon.rmid;
		} else if (rdtgrp->type == RDTMON_GROUP) {
			if (rdtgrp->mon.parent->closid == tsk->closid) {
				tsk->rmid = rdtgrp->mon.rmid;
			} else {
				FUNC4("Can't move task to different control group\n");
				ret = -EINVAL;
			}
		}
	}
	return ret;
}