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
struct pt_regs {int /*<<< orphan*/  scause; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_OOPS ; 
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct pt_regs *regs, const char *str)
{
	static int die_counter;
	int ret;

	FUNC6();

	FUNC12(&die_lock);
	FUNC2();
	FUNC1(1);

	FUNC9("%s [#%d]\n", str, ++die_counter);
	FUNC10();
	FUNC11(regs);

	ret = FUNC5(DIE_OOPS, str, regs, 0, regs->scause, SIGSEGV);

	FUNC1(0);
	FUNC0(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	FUNC13(&die_lock);
	FUNC7();

	if (FUNC4())
		FUNC8("Fatal exception in interrupt");
	if (panic_on_oops)
		FUNC8("Fatal exception");
	if (ret != NOTIFY_STOP)
		FUNC3(SIGSEGV);
}