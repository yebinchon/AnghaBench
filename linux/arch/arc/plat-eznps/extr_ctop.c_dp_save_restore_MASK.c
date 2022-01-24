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
struct eznps_dp {void* gpa1; void* eflags; } ;
struct TYPE_2__ {struct eznps_dp dp; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTOP_AUX_EFLAGS ; 
 int /*<<< orphan*/  CTOP_AUX_GPA1 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 

void FUNC2(struct task_struct *prev, struct task_struct *next)
{
	struct eznps_dp *prev_task_dp = &prev->thread.dp;
	struct eznps_dp *next_task_dp = &next->thread.dp;

	/* Here we save all Data Plane related auxiliary registers */
	prev_task_dp->eflags = FUNC0(CTOP_AUX_EFLAGS);
	FUNC1(CTOP_AUX_EFLAGS, next_task_dp->eflags);

	prev_task_dp->gpa1 = FUNC0(CTOP_AUX_GPA1);
	FUNC1(CTOP_AUX_GPA1, next_task_dp->gpa1);
}