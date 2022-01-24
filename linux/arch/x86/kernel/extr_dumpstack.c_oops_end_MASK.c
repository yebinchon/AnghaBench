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
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  SHOW_REGS_ALL ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  die_nest_count ; 
 int die_owner ; 
 int /*<<< orphan*/  exec_summary_regs ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(unsigned long flags, struct pt_regs *regs, int signr)
{
	if (regs && FUNC7(current))
		FUNC4(regs);

	FUNC3(0);
	die_owner = -1;
	FUNC1(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	die_nest_count--;
	if (!die_nest_count)
		/* Nest count reaches zero, release the lock. */
		FUNC2(&die_lock);
	FUNC10(flags);
	FUNC8();

	/* Executive summary in case the oops scrolled away */
	FUNC0(&exec_summary_regs, SHOW_REGS_ALL);

	if (!signr)
		return;
	if (FUNC5())
		FUNC9("Fatal exception in interrupt");
	if (panic_on_oops)
		FUNC9("Fatal exception");

	/*
	 * We're not going to return, but we might be on an IST stack or
	 * have very little stack space left.  Rewind the stack and kill
	 * the task.
	 * Before we rewind the stack, we have to tell KASAN that we're going to
	 * reuse the task stack and that existing poisons are invalid.
	 */
	FUNC6(current);
	FUNC11(signr);
}