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
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0(g_repo, "sm_unchanged");

	/* lookup pending change in .gitmodules that is not in HEAD */
	FUNC0(g_repo, "sm_added_and_uncommited");

	/* lookup pending change in .gitmodules that is not in HEAD nor index */
	FUNC0(g_repo, "sm_gitmodules_only");

	/* lookup git repo subdir that is not added as submodule */
	FUNC1(g_repo, "not-submodule", GIT_EEXISTS);

	/* lookup existing directory that is not a submodule */
	FUNC1(g_repo, "just_a_dir", GIT_ENOTFOUND);

	/* lookup existing file that is not a submodule */
	FUNC1(g_repo, "just_a_file", GIT_ENOTFOUND);

	/* lookup non-existent item */
	FUNC1(g_repo, "no_such_file", GIT_ENOTFOUND);

	/* lookup a submodule by path with a trailing slash */
	FUNC0(g_repo, "sm_added_and_uncommited/");
}