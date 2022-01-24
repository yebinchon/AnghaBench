#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct update_submodule_cb_payload {int checkout_progress_called; int update_tips_called; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {struct update_submodule_cb_payload* payload; int /*<<< orphan*/  update_tips; } ;
struct TYPE_9__ {TYPE_2__ callbacks; } ;
struct TYPE_7__ {struct update_submodule_cb_payload* progress_payload; int /*<<< orphan*/  progress_cb; } ;
struct TYPE_10__ {TYPE_3__ fetch_opts; TYPE_1__ checkout_opts; } ;
typedef  TYPE_4__ git_submodule_update_options ;
typedef  int /*<<< orphan*/  git_submodule ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNSPECIFIED ; 
 int GIT_SUBMODULE_STATUS_IN_CONFIG ; 
 int GIT_SUBMODULE_STATUS_IN_HEAD ; 
 int GIT_SUBMODULE_STATUS_IN_INDEX ; 
 int GIT_SUBMODULE_STATUS_IN_WD ; 
 int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ; 
 TYPE_4__ GIT_SUBMODULE_UPDATE_OPTIONS_INIT ; 
 int /*<<< orphan*/  checkout_progress_cb ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  update_tips ; 

void FUNC13(void)
{
	git_submodule *sm;
	git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
	unsigned int submodule_status = 0;
	struct update_submodule_cb_payload update_payload = { 0 };

	g_repo = FUNC12();

	update_options.checkout_opts.progress_cb = checkout_progress_cb;
	update_options.checkout_opts.progress_payload = &update_payload;

	update_options.fetch_opts.callbacks.update_tips = update_tips;
	update_options.fetch_opts.callbacks.payload = &update_payload;

	/* get the submodule */
	FUNC2(FUNC8(&sm, g_repo, "testrepo"));

	/* verify the initial state of the submodule */
	FUNC2(FUNC9(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
	FUNC1(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_WD_UNINITIALIZED);

	/* initialize and update the submodule */
	FUNC2(FUNC7(sm, 0));
	FUNC2(FUNC10(sm, 0, &update_options));

	/* verify state */
	FUNC2(FUNC9(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
	FUNC1(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_IN_WD);

	FUNC0(FUNC3(FUNC5(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC3(FUNC11(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);
	FUNC0(FUNC3(FUNC6(sm), "a65fedf39aefe402d3bb6e24df4d4f5fe4547750") == 0);

	/* verify that the expected callbacks have been called. */
	FUNC1(1, update_payload.checkout_progress_called);
	FUNC1(1, update_payload.update_tips_called);

	FUNC4(sm);
}