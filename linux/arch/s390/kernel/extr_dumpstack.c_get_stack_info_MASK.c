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
struct task_struct {int dummy; } ;
struct stack_info {unsigned long type; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long STACK_TYPE_UNKNOWN ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,struct stack_info*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct stack_info*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct stack_info*) ; 
 scalar_t__ FUNC3 (unsigned long,struct task_struct*,struct stack_info*) ; 

int FUNC4(unsigned long sp, struct task_struct *task,
		   struct stack_info *info, unsigned long *visit_mask)
{
	if (!sp)
		goto unknown;

	task = task ? : current;

	/* Check per-task stack */
	if (FUNC3(sp, task, info))
		goto recursion_check;

	if (task != current)
		goto unknown;

	/* Check per-cpu stacks */
	if (!FUNC0(sp, info) &&
	    !FUNC1(sp, info) &&
	    !FUNC2(sp, info))
		goto unknown;

recursion_check:
	/*
	 * Make sure we don't iterate through any given stack more than once.
	 * If it comes up a second time then there's something wrong going on:
	 * just break out and report an unknown stack type.
	 */
	if (*visit_mask & (1UL << info->type))
		goto unknown;
	*visit_mask |= 1UL << info->type;
	return 0;
unknown:
	info->type = STACK_TYPE_UNKNOWN;
	return -EINVAL;
}