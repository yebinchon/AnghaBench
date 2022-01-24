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
typedef  int /*<<< orphan*/  git_submodule ;

/* Variables and functions */
 scalar_t__ GIT_SUBMODULE_IGNORE_NONE ; 
 scalar_t__ GIT_SUBMODULE_UPDATE_CHECKOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ g_repo ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(void)
{
	git_submodule *sm;
	const char *oid = "480095882d281ed676fe5b863569520e54a7d5c0";

	FUNC2(FUNC9(&sm, g_repo, "sm_unchanged"));
	FUNC0(FUNC11(sm) == g_repo);
	FUNC1("sm_unchanged", FUNC10(sm));
	FUNC0(FUNC3(FUNC12(sm), "sm_unchanged") == 0);
	FUNC0(FUNC3(FUNC14(sm), "/submod2_target") == 0);

	FUNC0(FUNC4(FUNC8(sm), oid) == 0);
	FUNC0(FUNC4(FUNC6(sm), oid) == 0);
	FUNC0(FUNC4(FUNC15(sm), oid) == 0);

	FUNC0(FUNC7(sm) == GIT_SUBMODULE_IGNORE_NONE);
	FUNC0(FUNC13(sm) == GIT_SUBMODULE_UPDATE_CHECKOUT);

	FUNC5(sm);


	FUNC2(FUNC9(&sm, g_repo, "sm_changed_head"));
	FUNC1("sm_changed_head", FUNC10(sm));

	FUNC0(FUNC4(FUNC8(sm), oid) == 0);
	FUNC0(FUNC4(FUNC6(sm), oid) == 0);
	FUNC0(FUNC4(FUNC15(sm),
		"3d9386c507f6b093471a3e324085657a3c2b4247") == 0);

	FUNC5(sm);


	FUNC2(FUNC9(&sm, g_repo, "sm_added_and_uncommited"));
	FUNC1("sm_added_and_uncommited", FUNC10(sm));

	FUNC0(FUNC4(FUNC8(sm), oid) == 0);
	FUNC0(FUNC6(sm) == NULL);
	FUNC0(FUNC4(FUNC15(sm), oid) == 0);

	FUNC5(sm);


	FUNC2(FUNC9(&sm, g_repo, "sm_missing_commits"));
	FUNC1("sm_missing_commits", FUNC10(sm));

	FUNC0(FUNC4(FUNC8(sm), oid) == 0);
	FUNC0(FUNC4(FUNC6(sm), oid) == 0);
	FUNC0(FUNC4(FUNC15(sm),
		"5e4963595a9774b90524d35a807169049de8ccad") == 0);

	FUNC5(sm);
}