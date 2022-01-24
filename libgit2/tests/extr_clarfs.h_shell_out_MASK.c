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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char* const,char* const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 
 int FUNC6 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(char * const argv[])
{
	int status, piderr;
	pid_t pid;

	pid = FUNC3();

	if (pid < 0) {
		FUNC4(stderr,
			"System error: `fork()` call failed (%d) - %s\n",
			errno, FUNC5(errno));
		FUNC2(-1);
	}

	if (pid == 0) {
		FUNC1(argv[0], argv);
	}

	do {
		piderr = FUNC6(pid, &status, WUNTRACED);
	} while (piderr < 0 && (errno == EAGAIN || errno == EINTR));

	return FUNC0(status);
}