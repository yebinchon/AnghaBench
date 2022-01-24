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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
#ifndef GIT_WIN32
	git_repository *repo;

	if (FUNC3() == 0)
		FUNC2();

	/*
	 * Create a non-writeable directory so that we cannot create directories
	 * inside of it. The root user has CAP_DAC_OVERRIDE, so he doesn't care
	 * for the directory permissions and thus we need to skip the test if
	 * run as root user.
	 */
	FUNC1(FUNC5("unwriteable", 0444));
	FUNC0(FUNC4(&repo, "unwriteable/repo", 0));
	FUNC1(FUNC6("unwriteable"));
#else
	clar__skip();
#endif
}