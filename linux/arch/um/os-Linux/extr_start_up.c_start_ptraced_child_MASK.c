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
 scalar_t__ SIGSTOP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC8 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void)
{
	int pid, n, status;

	FUNC5(stdout);

	pid = FUNC6();
	if (pid == 0)
		FUNC7();
	else if (pid < 0)
		FUNC4("start_ptraced_child : fork failed");

	FUNC0(n = FUNC8(pid, &status, WUNTRACED));
	if (n < 0)
		FUNC4("check_ptrace : waitpid failed");
	if (!FUNC1(status) || (FUNC2(status) != SIGSTOP))
		FUNC3("check_ptrace : expected SIGSTOP, got status = %d",
		      status);

	return pid;
}