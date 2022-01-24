#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  MSEC_PER_SEC ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  die_nest_count ; 
 int die_owner ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 

__attribute__((used)) static void FUNC15(unsigned long flags, struct pt_regs *regs,
			       int signr)
{
	FUNC3(0);
	FUNC1(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	die_nest_count--;
	FUNC11();
	FUNC13("\n");
	if (!die_nest_count) {
		/* Nest count reaches zero, release the lock. */
		die_owner = -1;
		FUNC2(&die_lock);
	}
	FUNC14(flags);

	/*
	 * system_reset_excption handles debugger, crash dump, panic, for 0x100
	 */
	if (FUNC0(regs) == 0x100)
		return;

	FUNC4(regs, "die oops");

	if (FUNC9(current))
		FUNC5(regs);

	if (!signr)
		return;

	/*
	 * While our oops output is serialised by a spinlock, output
	 * from panic() called below can race and corrupt it. If we
	 * know we are going to panic, delay for 1 second so we have a
	 * chance to get clean backtraces from all CPUs that are oopsing.
	 */
	if (FUNC7() || panic_on_oops || !current->pid ||
	    FUNC8(current)) {
		FUNC10(MSEC_PER_SEC);
	}

	if (panic_on_oops)
		FUNC12("Fatal exception");
	FUNC6(signr);
}