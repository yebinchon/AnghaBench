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
struct thread_info {size_t cpu; struct thread_info* real_thread; } ;
struct task_struct {struct thread_info* stack; } ;
struct TYPE_2__ {struct task_struct* task; } ;

/* Variables and functions */
 TYPE_1__* cpu_tasks ; 
 struct thread_info* FUNC0 () ; 
 int /*<<< orphan*/  pending_mask ; 
 struct thread_info* FUNC1 (struct task_struct*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC3(unsigned long *mask_out)
{
	struct thread_info *ti;
	unsigned long mask, old;
	int nested;

	mask = FUNC2(&pending_mask, *mask_out);
	if (mask != 0) {
		/*
		 * If any interrupts come in at this point, we want to
		 * make sure that their bits aren't lost by our
		 * putting our bit in.  So, this loop accumulates bits
		 * until xchg returns the same value that we put in.
		 * When that happens, there were no new interrupts,
		 * and pending_mask contains a bit for each interrupt
		 * that came in.
		 */
		old = *mask_out;
		do {
			old |= mask;
			mask = FUNC2(&pending_mask, old);
		} while (mask != old);
		return 1;
	}

	ti = FUNC0();
	nested = (ti->real_thread != NULL);
	if (!nested) {
		struct task_struct *task;
		struct thread_info *tti;

		task = cpu_tasks[ti->cpu].task;
		tti = FUNC1(task);

		*ti = *tti;
		ti->real_thread = tti;
		task->stack = ti;
	}

	mask = FUNC2(&pending_mask, 0);
	*mask_out |= mask | nested;
	return 0;
}