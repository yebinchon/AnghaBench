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
 unsigned int GIT_SUBMODULE_STATUS_INDEX_ADDED ; 
 unsigned int GIT_SUBMODULE_STATUS_INDEX_DELETED ; 
 unsigned int GIT_SUBMODULE_STATUS_INDEX_MODIFIED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_DELETED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_MODIFIED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_UNTRACKED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_WD_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(void)
{
	unsigned int status;

	FUNC6("sm_unchanged");

	FUNC5(g_repo, "just_a_dir", GIT_ENOTFOUND);
	FUNC5(g_repo, "not-submodule", GIT_EEXISTS);
	FUNC5(g_repo, "not", GIT_EEXISTS);

	status = FUNC3(g_repo, "sm_changed_index");
	FUNC1((status & GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED) != 0);

	status = FUNC3(g_repo, "sm_changed_head");
	FUNC1((status & GIT_SUBMODULE_STATUS_WD_MODIFIED) != 0);

	status = FUNC3(g_repo, "sm_changed_file");
	FUNC1((status & GIT_SUBMODULE_STATUS_WD_WD_MODIFIED) != 0);

	status = FUNC3(g_repo, "sm_changed_untracked_file");
	FUNC1((status & GIT_SUBMODULE_STATUS_WD_UNTRACKED) != 0);

	status = FUNC3(g_repo, "sm_missing_commits");
	FUNC1((status & GIT_SUBMODULE_STATUS_WD_MODIFIED) != 0);

	status = FUNC3(g_repo, "sm_added_and_uncommited");
	FUNC1((status & GIT_SUBMODULE_STATUS_INDEX_ADDED) != 0);

	/* removed sm_unchanged for deleted workdir */
	status = FUNC3(g_repo, "sm_unchanged");
	FUNC1((status & GIT_SUBMODULE_STATUS_WD_DELETED) != 0);

	/* now mkdir sm_unchanged to test uninitialized */
	FUNC2(FUNC4("sm_unchanged", "submod2", 0755, 0, NULL));
	status = FUNC3(g_repo, "sm_unchanged");
	FUNC1((status & GIT_SUBMODULE_STATUS_WD_UNINITIALIZED) != 0);

	/* update sm_changed_head in index */
	FUNC0("sm_changed_head");
	status = FUNC3(g_repo, "sm_changed_head");
	FUNC1((status & GIT_SUBMODULE_STATUS_INDEX_MODIFIED) != 0);

	/* remove sm_changed_head from index */
	FUNC7("sm_changed_head");
	status = FUNC3(g_repo, "sm_changed_head");
	FUNC1((status & GIT_SUBMODULE_STATUS_INDEX_DELETED) != 0);
}