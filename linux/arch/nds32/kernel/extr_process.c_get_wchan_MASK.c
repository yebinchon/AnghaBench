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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_FRAME_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TASK_RUNNING ; 
 unsigned long THREAD_SIZE ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 unsigned long FUNC4 (struct task_struct*) ; 

unsigned long FUNC5(struct task_struct *p)
{
	unsigned long fp, lr;
	unsigned long stack_start, stack_end;
	int count = 0;

	if (!p || p == current || p->state == TASK_RUNNING)
		return 0;

	if (FUNC0(CONFIG_FRAME_POINTER)) {
		stack_start = (unsigned long)FUNC1(p);
		stack_end = (unsigned long)FUNC3(p) + THREAD_SIZE;

		fp = FUNC4(p);
		do {
			if (fp < stack_start || fp > stack_end)
				return 0;
			lr = ((unsigned long *)fp)[0];
			if (!FUNC2(lr))
				return lr;
			fp = *(unsigned long *)(fp + 4);
		} while (count++ < 16);
	}
	return 0;
}