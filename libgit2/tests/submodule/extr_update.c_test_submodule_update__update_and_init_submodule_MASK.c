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
typedef  int /*<<< orphan*/  git_submodule_update_options ;
typedef  int /*<<< orphan*/  git_submodule ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNSPECIFIED ; 
 int GIT_SUBMODULE_STATUS_IN_CONFIG ; 
 int GIT_SUBMODULE_STATUS_IN_HEAD ; 
 int GIT_SUBMODULE_STATUS_IN_INDEX ; 
 int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ; 
 int /*<<< orphan*/  GIT_SUBMODULE_UPDATE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(void)
{
	git_submodule *sm;
	git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
	unsigned int submodule_status = 0;

	g_repo = FUNC11();

	/* get the submodule */
	FUNC2(FUNC7(&sm, g_repo, "testrepo"));

	FUNC2(FUNC8(&submodule_status, g_repo, "testrepo", GIT_SUBMODULE_IGNORE_UNSPECIFIED));
	FUNC1(submodule_status, GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_WD_UNINITIALIZED);

	/* update (with option to initialize sub repo) */
	FUNC2(FUNC9(sm, 1, &update_options));

	/* verify expected state */
	FUNC0(FUNC3(FUNC5(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC3(FUNC10(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);
	FUNC0(FUNC3(FUNC6(sm), "be3563ae3f795b2b4353bcce3a527ad0a4f7f644") == 0);

	FUNC4(sm);
}