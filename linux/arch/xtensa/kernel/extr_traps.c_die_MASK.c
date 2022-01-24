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
struct pt_regs {scalar_t__* areg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PREEMPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,long,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pt_regs*) ; 

void FUNC12(const char * str, struct pt_regs * regs, long err)
{
	static int die_counter;

	FUNC2();
	FUNC9(&die_lock);

	FUNC6("%s: sig: %ld [#%d]%s\n", str, err, ++die_counter,
		FUNC0(CONFIG_PREEMPT) ? " PREEMPT" : "");
	FUNC7(regs);
	if (!FUNC11(regs))
		FUNC8(NULL, (unsigned long*)regs->areg[1]);

	FUNC1(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	FUNC10(&die_lock);

	if (FUNC4())
		FUNC5("Fatal exception in interrupt");

	if (panic_on_oops)
		FUNC5("Fatal exception");

	FUNC3(err);
}