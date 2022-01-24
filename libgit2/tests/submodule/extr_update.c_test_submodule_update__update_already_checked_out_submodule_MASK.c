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
struct update_submodule_cb_payload {int checkout_progress_called; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {struct update_submodule_cb_payload* progress_payload; int /*<<< orphan*/  progress_cb; } ;
struct TYPE_9__ {TYPE_1__ checkout_opts; } ;
typedef  TYPE_2__ git_submodule_update_options ;
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_10__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_3__ git_checkout_options ;

/* Variables and functions */
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
 int /*<<< orphan*/  checkout_progress_cb ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 

void FUNC19(void)
{
	git_submodule *sm = NULL;
	git_checkout_options checkout_options = GIT_CHECKOUT_OPTIONS_INIT;
	git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
	unsigned int submodule_status = 0;
	git_reference *branch_reference = NULL;
	git_object *branch_commit = NULL;
	struct update_submodule_cb_payload update_payload = { 0 };

	g_repo = FUNC18();

	update_options.checkout_opts.progress_cb = checkout_progress_cb;
	update_options.checkout_opts.progress_payload = &update_payload;

	/* Initialize and update the sub repository */
	FUNC2(FUNC14(&sm, g_repo, "testrepo"));

	FUNC2(FUNC15(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
	FUNC1(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_WD_UNINITIALIZED);

	FUNC2(FUNC16(sm, 1, &update_options));

	/* verify expected state */
	FUNC0(FUNC5(FUNC12(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC5(FUNC17(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC5(FUNC13(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);

	/* checkout the alternate_1 branch */
	checkout_options.checkout_strategy = GIT_CHECKOUT_SAFE;

	FUNC2(FUNC7(&branch_reference, g_repo, "refs/heads/alternate_1"));
	FUNC2(FUNC9(&branch_commit, branch_reference, GIT_OBJECT_COMMIT));
	FUNC2(FUNC3(g_repo, branch_commit, &checkout_options));
	FUNC2(FUNC10(g_repo, FUNC8(branch_reference)));

	/*
	 * Verify state after checkout of parent repository. The submodule ID in the
	 * HEAD commit and index should be updated, but not the workdir.
	 */

	FUNC2(FUNC15(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));

	FUNC11(sm);
	FUNC2(FUNC14(&sm, g_repo, "testrepo"));

	FUNC1(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_IN_WD |
		GIT_SUBMODULE_STATUS_WD_MODIFIED);

	FUNC0(FUNC5(FUNC12(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC5(FUNC17(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC5(FUNC13(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);

	/*
	 * Update the submodule and verify the state.
	 * Now, the HEAD, index, and Workdir commits should all be updated to
	 * the new commit.
	 */
	FUNC2(FUNC16(sm, 0, &update_options));
	FUNC0(FUNC5(FUNC12(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC5(FUNC17(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC5(FUNC13(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);

	/* verify that the expected callbacks have been called. */
	FUNC1(1, update_payload.checkout_progress_called);

	FUNC11(sm);
	FUNC4(branch_commit);
	FUNC6(branch_reference);
}