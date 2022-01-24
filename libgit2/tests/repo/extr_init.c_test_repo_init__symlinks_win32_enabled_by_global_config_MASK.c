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
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC11(void)
{
#ifndef GIT_WIN32
	FUNC3();
#else
	git_config *config, *repo_config;
	int val;

	if (!git_path_supports_symlinks("link"))
		cl_skip();

	create_tmp_global_config("tmp_global_config", "core.symlinks", "true");

	/*
	 * Create a new repository (can't use `assert_config_on_init` since we
	 * want to examine configuration levels with more granularity.)
	 */
	cl_git_pass(git_repository_init(&_repo, "config_entry/test.non.bare.git", false));

	/* Ensure that core.symlinks remains set (via the global config). */
	cl_git_pass(git_repository_config(&config, _repo));
	cl_git_pass(git_config_get_bool(&val, config, "core.symlinks"));
	cl_assert_equal_i(1, val);

	/*
	 * Ensure that the repository config does not set core.symlinks.
	 * It should remain inherited.
	 */
	cl_git_pass(git_config_open_level(&repo_config, config, GIT_CONFIG_LEVEL_LOCAL));
	cl_git_fail_with(GIT_ENOTFOUND, git_config_get_bool(&val, repo_config, "core.symlinks"));
	git_config_free(repo_config);

	git_config_free(config);
#endif
}