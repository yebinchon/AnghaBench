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
typedef  int mode_t ;

/* Variables and functions */
 unsigned int GIT_STATUS_IGNORED ; 
 unsigned int GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (char*,int const) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,int /*<<< orphan*/ ,char*) ; 

void FUNC7(void)
{
	unsigned int flags;
	const mode_t mode = 0777;

	g_repo = FUNC4("empty_standard_repo");
	FUNC3("empty_standard_repo/.gitignore", "foo bar.txt\n");

	FUNC1(
		"empty_standard_repo/foo bar.txt", "I'm going to be ignored!");

	FUNC2(FUNC6(&flags, g_repo, "foo bar.txt"));
	FUNC0(flags == GIT_STATUS_IGNORED);

	FUNC2(FUNC5("empty_standard_repo/foo", mode));
	FUNC1("empty_standard_repo/foo/look-ma.txt", "I'm not going to be ignored!");

	FUNC2(FUNC6(&flags, g_repo, "foo/look-ma.txt"));
	FUNC0(flags == GIT_STATUS_WT_NEW);
}