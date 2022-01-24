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

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_TRACEME ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  SIGWINCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	int ret;
	/* Calling os_getpid because some libcs cached getpid incorrectly */
	int pid = FUNC4(), ppid = FUNC2();
	int sc_result;

	if (FUNC0(SIGWINCH, 0) < 0 ||
	    FUNC6(PTRACE_TRACEME, 0, 0, 0) < 0) {
		FUNC5("ptrace");
		FUNC3(pid, SIGKILL);
	}
	FUNC3(pid, SIGSTOP);

	/*
	 * This syscall will be intercepted by the parent. Don't call more than
	 * once, please.
	 */
	sc_result = FUNC4();

	if (sc_result == pid)
		/* Nothing modified by the parent, we are running normally. */
		ret = 1;
	else if (sc_result == ppid)
		/*
		 * Expected in check_ptrace and check_sysemu when they succeed
		 * in modifying the stack frame
		 */
		ret = 0;
	else
		/* Serious trouble! This could be caused by a bug in host 2.6
		 * SKAS3/2.6 patch before release -V6, together with a bug in
		 * the UML code itself.
		 */
		ret = 2;

	FUNC1(ret);
}