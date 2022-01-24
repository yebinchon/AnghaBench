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
struct thread_info {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int FUNC0 (char const*,int,struct thread_info*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct thread_info* FUNC4 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ panic_on_oops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(const char *str, struct pt_regs *regs, int err)
{
	struct thread_info *thread = FUNC4();
	int ret;

	FUNC7();

	FUNC10(&die_lock);
	FUNC3();
	FUNC2(1);
	ret = FUNC0(str, err, thread, regs);

	FUNC2(0);
	FUNC1(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	FUNC11(&die_lock);
	FUNC8();

	if (FUNC6())
		FUNC9("Fatal exception in interrupt");
	if (panic_on_oops)
		FUNC9("Fatal exception");
	if (ret != NOTIFY_STOP)
		FUNC5(SIGSEGV);
}