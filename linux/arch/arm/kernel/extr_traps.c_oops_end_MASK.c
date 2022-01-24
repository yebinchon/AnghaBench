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
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  die_nest_count ; 
 int die_owner ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

__attribute__((used)) static void FUNC10(unsigned long flags, struct pt_regs *regs, int signr)
{
	if (regs && FUNC6(current))
		FUNC3(regs);

	FUNC2(0);
	die_owner = -1;
	FUNC0(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	die_nest_count--;
	if (!die_nest_count)
		/* Nest count reaches zero, release the lock. */
		FUNC1(&die_lock);
	FUNC9(flags);
	FUNC7();

	if (FUNC5())
		FUNC8("Fatal exception in interrupt");
	if (panic_on_oops)
		FUNC8("Fatal exception");
	if (signr)
		FUNC4(signr);
}