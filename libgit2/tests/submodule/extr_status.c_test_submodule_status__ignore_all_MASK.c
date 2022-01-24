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
typedef  int /*<<< orphan*/  git_submodule_ignore_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_ALL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(void)
{
	unsigned int status;
	git_submodule_ignore_t ign = GIT_SUBMODULE_IGNORE_ALL;

	FUNC7("sm_unchanged");

	FUNC6(g_repo, "just_a_dir", GIT_ENOTFOUND);
	FUNC6(g_repo, "not-submodule", GIT_EEXISTS);
	FUNC6(g_repo, "not", GIT_EEXISTS);

	FUNC3(FUNC5(&status, g_repo,"sm_changed_index", ign));
	FUNC2(FUNC0(status));

	FUNC3(FUNC5(&status, g_repo,"sm_changed_head", ign));
	FUNC2(FUNC0(status));

	FUNC3(FUNC5(&status, g_repo,"sm_changed_file", ign));
	FUNC2(FUNC0(status));

	FUNC3(FUNC5(&status, g_repo,"sm_changed_untracked_file", ign));
	FUNC2(FUNC0(status));

	FUNC3(FUNC5(&status, g_repo,"sm_missing_commits", ign));
	FUNC2(FUNC0(status));

	FUNC3(FUNC5(&status, g_repo,"sm_added_and_uncommited", ign));
	FUNC2(FUNC0(status));

	/* removed sm_unchanged for deleted workdir */
	FUNC3(FUNC5(&status, g_repo,"sm_unchanged", ign));
	FUNC2(FUNC0(status));

	/* now mkdir sm_unchanged to test uninitialized */
	FUNC3(FUNC4("sm_unchanged", "submod2", 0755, 0, NULL));
	FUNC3(FUNC5(&status, g_repo,"sm_unchanged", ign));
	FUNC2(FUNC0(status));

	/* update sm_changed_head in index */
	FUNC1("sm_changed_head");
	FUNC3(FUNC5(&status, g_repo,"sm_changed_head", ign));
	FUNC2(FUNC0(status));
}