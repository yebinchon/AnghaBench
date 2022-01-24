#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  checkout_strategy; } ;
struct TYPE_9__ {TYPE_1__ checkout_opts; } ;
typedef  TYPE_2__ git_submodule_update_options ;
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_10__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_3__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_3__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNSPECIFIED ; 
 int GIT_SUBMODULE_STATUS_IN_CONFIG ; 
 int GIT_SUBMODULE_STATUS_IN_HEAD ; 
 int GIT_SUBMODULE_STATUS_IN_INDEX ; 
 int GIT_SUBMODULE_STATUS_IN_WD ; 
 int GIT_SUBMODULE_STATUS_WD_MODIFIED ; 
 int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ; 
 TYPE_2__ GIT_SUBMODULE_UPDATE_OPTIONS_INIT ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

void FUNC20(void)
{
	git_submodule *sm = NULL;
	git_checkout_options checkout_options = GIT_CHECKOUT_OPTIONS_INIT;
	git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
	unsigned int submodule_status = 0;
	git_reference *branch_reference = NULL;
	git_object *branch_commit = NULL;

	g_repo = FUNC19();

	/* Initialize and update the sub repository */
	FUNC2(FUNC15(&sm, g_repo, "testrepo"));

	FUNC2(FUNC16(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
	FUNC1(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_WD_UNINITIALIZED);

	FUNC2(FUNC17(sm, 1, &update_options));

	/* verify expected state */
	FUNC0(FUNC6(FUNC13(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC6(FUNC18(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC6(FUNC14(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);

	/* checkout the alternate_1 branch */
	checkout_options.checkout_strategy = GIT_CHECKOUT_SAFE;

	FUNC2(FUNC8(&branch_reference, g_repo, "refs/heads/alternate_1"));
	FUNC2(FUNC10(&branch_commit, branch_reference, GIT_OBJECT_COMMIT));
	FUNC2(FUNC4(g_repo, branch_commit, &checkout_options));
	FUNC2(FUNC11(g_repo, FUNC9(branch_reference)));

	/*
	 * Verify state after checkout of parent repository. The submodule ID in the
	 * HEAD commit and index should be updated, but not the workdir.
	 */
	FUNC2(FUNC16(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));

	FUNC12(sm);
	FUNC2(FUNC15(&sm, g_repo, "testrepo"));

	FUNC1(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_IN_WD |
		GIT_SUBMODULE_STATUS_WD_MODIFIED);

	FUNC0(FUNC6(FUNC13(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC6(FUNC18(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC6(FUNC14(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);

	/*
	 * Create a conflicting edit in the subrepository to verify that
	 * the submodule update action is blocked.
	 */
	FUNC3("submodule_simple/testrepo/branch_file.txt", "a conflicting edit", 0,
		O_WRONLY | O_CREAT | O_TRUNC, 0777);

	/* forcefully checkout and verify the submodule state was updated. */
	update_options.checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC2(FUNC17(sm, 0, &update_options));
	FUNC0(FUNC6(FUNC13(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC6(FUNC18(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC6(FUNC14(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);

	FUNC12(sm);
	FUNC5(branch_commit);
	FUNC7(branch_reference);
}