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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int pid, int exitcode, int mustexit)
{
	int status, n, ret = 0;

	if (FUNC6(PTRACE_CONT, pid, 0, 0) < 0) {
		FUNC5("stop_ptraced_child : ptrace failed");
		return -1;
	}
	FUNC0(n = FUNC7(pid, &status, 0));
	if (!FUNC2(status) || (FUNC1(status) != exitcode)) {
		int exit_with = FUNC1(status);
		if (exit_with == 2)
			FUNC4("check_ptrace : child exited with status 2. "
				  "\nDisabling SYSEMU support.\n");
		FUNC4("check_ptrace : child exited with exitcode %d, while "
			  "expecting %d; status 0x%x\n", exit_with,
			  exitcode, status);
		if (mustexit)
			FUNC3(1);
		ret = -1;
	}

	return ret;
}