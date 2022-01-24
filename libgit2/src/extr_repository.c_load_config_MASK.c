#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_5__ {char const* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_PROGRAMDATA ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_XDG ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
	git_config **out,
	git_repository *repo,
	const char *global_config_path,
	const char *xdg_config_path,
	const char *system_config_path,
	const char *programdata_path)
{
	int error;
	git_buf config_path = GIT_BUF_INIT;
	git_config *cfg = NULL;

	FUNC0(out);

	if ((error = FUNC4(&cfg)) < 0)
		return error;

	if (repo) {
		if ((error = FUNC6(&config_path, repo, GIT_REPOSITORY_ITEM_CONFIG)) == 0)
			error = FUNC2(cfg, config_path.ptr, GIT_CONFIG_LEVEL_LOCAL, repo, 0);

		if (error && error != GIT_ENOTFOUND)
			goto on_error;

		FUNC1(&config_path);
	}

	if (global_config_path != NULL &&
		(error = FUNC2(
			cfg, global_config_path, GIT_CONFIG_LEVEL_GLOBAL, repo, 0)) < 0 &&
		error != GIT_ENOTFOUND)
		goto on_error;

	if (xdg_config_path != NULL &&
		(error = FUNC2(
			cfg, xdg_config_path, GIT_CONFIG_LEVEL_XDG, repo, 0)) < 0 &&
		error != GIT_ENOTFOUND)
		goto on_error;

	if (system_config_path != NULL &&
		(error = FUNC2(
			cfg, system_config_path, GIT_CONFIG_LEVEL_SYSTEM, repo, 0)) < 0 &&
		error != GIT_ENOTFOUND)
		goto on_error;

	if (programdata_path != NULL &&
		(error = FUNC2(
			cfg, programdata_path, GIT_CONFIG_LEVEL_PROGRAMDATA, repo, 0)) < 0 &&
		error != GIT_ENOTFOUND)
		goto on_error;

	FUNC5(); /* clear any lingering ENOTFOUND errors */

	*out = cfg;
	return 0;

on_error:
	FUNC1(&config_path);
	FUNC3(cfg);
	*out = NULL;
	return error;
}