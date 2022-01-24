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
struct pt_regs {unsigned long* regs; unsigned long cp0_epc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ raw_show_trace ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (struct task_struct*,unsigned long*,unsigned long,unsigned long*) ; 
 scalar_t__ FUNC6 (struct pt_regs const*) ; 

__attribute__((used)) static void FUNC7(struct task_struct *task, const struct pt_regs *regs)
{
	unsigned long sp = regs->regs[29];
	unsigned long ra = regs->regs[31];
	unsigned long pc = regs->cp0_epc;

	if (!task)
		task = current;

	if (raw_show_trace || FUNC6(regs) || !FUNC0(pc)) {
		FUNC4(sp);
		return;
	}
	FUNC3("Call Trace:\n");
	do {
		FUNC2(pc);
		pc = FUNC5(task, &sp, pc, &ra);
	} while (pc);
	FUNC1("\n");
}