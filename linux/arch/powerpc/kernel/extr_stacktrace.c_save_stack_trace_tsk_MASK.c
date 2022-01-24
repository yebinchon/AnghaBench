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
struct TYPE_2__ {unsigned long ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_trace {int dummy; } ;

/* Variables and functions */
 struct task_struct* current ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack_trace*,unsigned long,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

void FUNC4(struct task_struct *tsk, struct stack_trace *trace)
{
	unsigned long sp;

	if (!FUNC3(tsk))
		return;

	if (tsk == current)
		sp = FUNC0();
	else
		sp = tsk->thread.ksp;

	FUNC2(trace, sp, tsk, 0);

	FUNC1(tsk);
}