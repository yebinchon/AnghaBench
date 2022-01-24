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
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int FUNC0 (char const*,int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC13(const char *str, struct pt_regs *regs, int err)
{
	int ret;
	unsigned long flags;

	FUNC11(&die_lock, flags);

	FUNC8();

	FUNC3();
	FUNC2(1);
	ret = FUNC0(str, err, regs);

	if (regs && FUNC7(current))
		FUNC4(regs);

	FUNC2(0);
	FUNC1(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	FUNC9();

	if (FUNC6())
		FUNC10("Fatal exception in interrupt");
	if (panic_on_oops)
		FUNC10("Fatal exception");

	FUNC12(&die_lock, flags);

	if (ret != NOTIFY_STOP)
		FUNC5(SIGSEGV);
}