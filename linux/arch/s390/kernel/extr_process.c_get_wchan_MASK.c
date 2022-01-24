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
struct TYPE_2__ {scalar_t__ ksp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;
struct stack_frame {int /*<<< orphan*/ * gprs; int /*<<< orphan*/  back_chain; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 struct stack_frame* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

unsigned long FUNC6(struct task_struct *p)
{
	struct stack_frame *sf, *low, *high;
	unsigned long return_address;
	int count;

	if (!p || p == current || p->state == TASK_RUNNING || !FUNC4(p))
		return 0;

	if (!FUNC5(p))
		return 0;

	low = FUNC4(p);
	high = (struct stack_frame *) FUNC3(p);
	sf = (struct stack_frame *) p->thread.ksp;
	if (sf <= low || sf > high) {
		return_address = 0;
		goto out;
	}
	for (count = 0; count < 16; count++) {
		sf = (struct stack_frame *)FUNC0(sf->back_chain);
		if (sf <= low || sf > high) {
			return_address = 0;
			goto out;
		}
		return_address = FUNC0(sf->gprs[8]);
		if (!FUNC1(return_address))
			goto out;
	}
out:
	FUNC2(p);
	return return_address;
}