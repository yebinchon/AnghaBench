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
 scalar_t__ DBG_HOOK_HANDLED ; 
 int /*<<< orphan*/  TRAP_TRACE ; 
 scalar_t__ FUNC0 (struct pt_regs*,unsigned int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(unsigned long unused, unsigned int esr,
			       struct pt_regs *regs)
{
	bool handler_found = false;

	/*
	 * If we are stepping a pending breakpoint, call the hw_breakpoint
	 * handler first.
	 */
	if (!FUNC2(regs))
		return 0;

	if (!handler_found && FUNC0(regs, esr) == DBG_HOOK_HANDLED)
		handler_found = true;

	if (!handler_found && FUNC5(regs)) {
		FUNC3(TRAP_TRACE);

		/*
		 * ptrace will disable single step unless explicitly
		 * asked to re-enable it. For other clients, it makes
		 * sense to leave it enabled (i.e. rewind the controls
		 * to the active-not-pending state).
		 */
		FUNC6(current);
	} else if (!handler_found) {
		FUNC1("Unexpected kernel single-step exception at EL1\n");
		/*
		 * Re-enable stepping since we know that we will be
		 * returning to regs.
		 */
		FUNC4(regs);
	}

	return 0;
}