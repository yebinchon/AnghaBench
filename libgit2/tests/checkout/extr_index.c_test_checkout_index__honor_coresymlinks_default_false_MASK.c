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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	FUNC1(FUNC4("symlink", 0777));

#ifndef GIT_WIN32
	/*
	 * This test is largely for Windows platforms to ensure that
	 * we respect an unset core.symlinks even when the platform
	 * supports symlinks.  Bail entirely on POSIX platforms that
	 * do support symlinks.
	 */
	if (FUNC3("symlink/test"))
		FUNC2();
#endif

	FUNC5();
	FUNC0("./symlink/link_to_new.txt", "new.txt");
}