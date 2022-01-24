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
struct task_struct {scalar_t__ state; } ;
struct stackframe {unsigned long sp; unsigned long pc; scalar_t__ lr; int /*<<< orphan*/  fp; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 unsigned long THREAD_SIZE ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 unsigned long FUNC3 (struct task_struct*) ; 
 unsigned long FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (struct stackframe*) ; 

unsigned long FUNC6(struct task_struct *p)
{
	struct stackframe frame;
	unsigned long stack_page;
	int count = 0;
	if (!p || p == current || p->state == TASK_RUNNING)
		return 0;

	frame.fp = FUNC2(p);
	frame.sp = FUNC4(p);
	frame.lr = 0;			/* recovered from the stack */
	frame.pc = FUNC3(p);
	stack_page = (unsigned long)FUNC1(p);
	do {
		if (frame.sp < stack_page ||
		    frame.sp >= stack_page + THREAD_SIZE ||
		    FUNC5(&frame) < 0)
			return 0;
		if (!FUNC0(frame.pc))
			return frame.pc;
	} while (count ++ < 16);
	return 0;
}