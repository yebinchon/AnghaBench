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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete_one_config ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_one_submodule ; 

void FUNC10(void)
{
	git_config *cfg;
	const char *str;

	/* erase submodule data from .git/config */
	FUNC2(FUNC7(&cfg, g_repo));
	FUNC2(
		FUNC4(cfg, "submodule\\..*", delete_one_config, cfg));
	FUNC5(cfg);

	/* confirm no submodule data in config */
	FUNC2(FUNC8(&cfg, g_repo));
	FUNC1(GIT_ENOTFOUND, FUNC6(&str, cfg, "submodule.sm_unchanged.url"));
	FUNC1(GIT_ENOTFOUND, FUNC6(&str, cfg, "submodule.sm_changed_head.url"));
	FUNC1(GIT_ENOTFOUND, FUNC6(&str, cfg, "submodule.sm_added_and_uncommited.url"));
	FUNC5(cfg);

	/* call init and see that settings are copied */
	FUNC2(FUNC9(g_repo, init_one_submodule, NULL));

	/* confirm submodule data in config */
	FUNC2(FUNC8(&cfg, g_repo));
	FUNC2(FUNC6(&str, cfg, "submodule.sm_unchanged.url"));
	FUNC0(FUNC3(str, "/submod2_target") == 0);
	FUNC2(FUNC6(&str, cfg, "submodule.sm_changed_head.url"));
	FUNC0(FUNC3(str, "/submod2_target") == 0);
	FUNC2(FUNC6(&str, cfg, "submodule.sm_added_and_uncommited.url"));
	FUNC0(FUNC3(str, "/submod2_target") == 0);
	FUNC5(cfg);
}