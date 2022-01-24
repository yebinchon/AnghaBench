#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_4__ {struct pt_regs* segv_regs; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int STACKSLOTS_PER_LINE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long* FUNC1 (struct task_struct*,struct pt_regs*) ; 
 scalar_t__ FUNC2 (unsigned long*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stackops ; 

void FUNC7(struct task_struct *task, unsigned long *stack)
{
	unsigned long *sp = stack;
	struct pt_regs *segv_regs = current->thread.segv_regs;
	int i;

	if (!segv_regs && FUNC3()) {
		FUNC5("Received SIGSEGV in SIGSEGV handler,"
				" aborting stack trace!\n");
		return;
	}

	if (!stack)
		sp = FUNC1(task, segv_regs);

	FUNC6("Stack:\n");
	stack = sp;
	for (i = 0; i < 3 * STACKSLOTS_PER_LINE; i++) {
		if (FUNC2(stack))
			break;
		if (i && ((i % STACKSLOTS_PER_LINE) == 0))
			FUNC4("\n");
		FUNC4(" %08lx", *stack++);
	}
	FUNC4("\n");

	FUNC6("Call Trace:\n");
	FUNC0(current, &stackops, NULL);
	FUNC6("\n");
}