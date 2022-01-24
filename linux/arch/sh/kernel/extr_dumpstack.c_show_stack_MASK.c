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
struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 scalar_t__ THREAD_SIZE ; 
 struct task_struct* current ; 
 scalar_t__ current_stack_pointer ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,unsigned long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 

void FUNC3(struct task_struct *tsk, unsigned long *sp)
{
	unsigned long stack;

	if (!tsk)
		tsk = current;
	if (tsk == current)
		sp = (unsigned long *)current_stack_pointer;
	else
		sp = (unsigned long *)tsk->thread.sp;

	stack = (unsigned long)sp;
	FUNC0("Stack: ", stack, THREAD_SIZE +
		 (unsigned long)FUNC2(tsk));
	FUNC1(tsk, sp, NULL);
}