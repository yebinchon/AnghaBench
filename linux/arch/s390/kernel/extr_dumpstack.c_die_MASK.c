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
struct pt_regs {int int_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_OOPS ; 
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,struct pt_regs*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

void FUNC18(struct pt_regs *regs, const char *str)
{
	static int die_counter;

	FUNC9();
	FUNC7();
	FUNC4();
	FUNC2();
	FUNC16(&die_lock);
	FUNC1(1);
	FUNC14("%s: %04x ilc:%d [#%d] ", str, regs->int_code & 0xffff,
	       regs->int_code >> 17, ++die_counter);
#ifdef CONFIG_PREEMPT
	pr_cont("PREEMPT ");
#endif
	FUNC12("SMP ");
	if (FUNC3())
		FUNC12("DEBUG_PAGEALLOC");
	FUNC12("\n");
	FUNC8(DIE_OOPS, str, regs, 0, regs->int_code & 0xffff, SIGSEGV);
	FUNC13();
	FUNC15(regs);
	FUNC1(0);
	FUNC0(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	FUNC17(&die_lock);
	if (FUNC6())
		FUNC11("Fatal exception in interrupt");
	if (panic_on_oops)
		FUNC11("Fatal exception: panic_on_oops");
	FUNC10();
	FUNC5(SIGSEGV);
}