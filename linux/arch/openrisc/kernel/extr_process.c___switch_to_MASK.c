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
struct thread_info {int dummy; } ;
struct task_struct {struct thread_info* stack; } ;
struct TYPE_2__ {struct task_struct* task; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct thread_info*,struct thread_info*) ; 
 struct thread_info** current_thread_info_set ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ lwa_flag ; 
 size_t FUNC3 () ; 

struct task_struct *FUNC4(struct task_struct *old,
				struct task_struct *new)
{
	struct task_struct *last;
	struct thread_info *new_ti, *old_ti;
	unsigned long flags;

	FUNC2(flags);

	/* current_set is an array of saved current pointers
	 * (one for each cpu). we need them at user->kernel transition,
	 * while we save them at kernel->user transition
	 */
	new_ti = new->stack;
	old_ti = old->stack;

	lwa_flag = 0;

	current_thread_info_set[FUNC3()] = new_ti;
	last = (FUNC0(old_ti, new_ti))->task;

	FUNC1(flags);

	return last;
}