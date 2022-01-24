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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(struct pt_regs *regs)
{
#ifdef CONFIG_HAVE_HW_BREAKPOINT
	int ret = check_hw_breakpoint(regs);

	preempt_enable();
	if (ret == 0)
		return;
#endif
	FUNC0("Breakpoint in kernel", regs, SIGKILL);

	/* If in user mode, send SIGTRAP signal to current process */

	FUNC2(SIGTRAP);
}