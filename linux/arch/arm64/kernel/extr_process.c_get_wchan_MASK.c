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
struct stackframe {unsigned long pc; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct stackframe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 (struct task_struct*,struct stackframe*) ; 

unsigned long FUNC7(struct task_struct *p)
{
	struct stackframe frame;
	unsigned long stack_page, ret = 0;
	int count = 0;
	if (!p || p == current || p->state == TASK_RUNNING)
		return 0;

	stack_page = (unsigned long)FUNC5(p);
	if (!stack_page)
		return 0;

	FUNC2(&frame, FUNC3(p), FUNC4(p));

	do {
		if (FUNC6(p, &frame))
			goto out;
		if (!FUNC0(frame.pc)) {
			ret = frame.pc;
			goto out;
		}
	} while (count ++ < 16);

out:
	FUNC1(p);
	return ret;
}