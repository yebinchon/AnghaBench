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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
#define  GIT_ENOTFOUND 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (char const**,int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 

__attribute__((used)) static void FUNC8(const char *repo_path, git_repository* repo)
{
	const char *email;
	char config_path[256];
	int32_t autocorrect;
	git_config *cfg;
	git_config *snap_cfg;
	int error_code;

	FUNC6("\n*Config Listing*\n");

	/**
	 * Open a config object so we can read global values from it.
	 */
	FUNC7(config_path, "%s/config", repo_path);
	FUNC0(FUNC4(&cfg, config_path), "opening config");

	if (FUNC2(&autocorrect, cfg, "help.autocorrect") == 0)
		FUNC6("Autocorrect: %d\n", autocorrect);

	FUNC0(FUNC5(&snap_cfg, repo), "config snapshot");
	FUNC3(&email, snap_cfg, "user.email");
	FUNC6("Email: %s\n", email);

	error_code = FUNC2(&autocorrect, cfg, "help.autocorrect");
	switch (error_code)
	{
		case 0:
			FUNC6("Autocorrect: %d\n", autocorrect);
			break;
		case GIT_ENOTFOUND:
			FUNC6("Autocorrect: Undefined\n");
			break;
		default:
			FUNC0(error_code, "get_int32 failed");
	}
	FUNC1(cfg);

	FUNC0(FUNC5(&snap_cfg, repo), "config snapshot");
	error_code = FUNC3(&email, snap_cfg, "user.email");
	switch (error_code)
	{
		case 0:
			FUNC6("Email: %s\n", email);
			break;
		case GIT_ENOTFOUND:
			FUNC6("Email: Undefined\n");
			break;
		default:
			FUNC0(error_code, "get_string failed");
	}

	FUNC1(snap_cfg);
}