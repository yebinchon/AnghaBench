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
struct TYPE_2__ {int /*<<< orphan*/ * xstate; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_xstate_cachep ; 

void FUNC1(struct task_struct *tsk)
{
	if (tsk->thread.xstate) {
		FUNC0(task_xstate_cachep, tsk->thread.xstate);
		tsk->thread.xstate = NULL;
	}
}