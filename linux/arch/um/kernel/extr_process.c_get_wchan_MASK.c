#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* switch_buf; } ;
struct task_struct {scalar_t__ state; TYPE_2__ thread; } ;
struct TYPE_3__ {unsigned long JB_SP; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 unsigned long THREAD_SIZE ; 
 struct task_struct* current ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 

unsigned long FUNC3(struct task_struct *p)
{
	unsigned long stack_page, sp, ip;
	bool seen_sched = 0;

	if ((p == NULL) || (p == current) || (p->state == TASK_RUNNING))
		return 0;

	stack_page = (unsigned long) FUNC2(p);
	/* Bail if the process has no kernel stack for some reason */
	if (stack_page == 0)
		return 0;

	sp = p->thread.switch_buf->JB_SP;
	/*
	 * Bail if the stack pointer is below the bottom of the kernel
	 * stack for some reason
	 */
	if (sp < stack_page)
		return 0;

	while (sp < stack_page + THREAD_SIZE) {
		ip = *((unsigned long *) sp);
		if (FUNC0(ip))
			/* Ignore everything until we're above the scheduler */
			seen_sched = 1;
		else if (FUNC1(ip) && seen_sched)
			return ip;

		sp += sizeof(unsigned long);
	}

	return 0;
}