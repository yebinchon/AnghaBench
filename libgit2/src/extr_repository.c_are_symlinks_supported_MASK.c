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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int*,int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(const char *wd_path)
{
	git_config *config = NULL;
	git_buf global_buf = GIT_BUF_INIT;
	git_buf xdg_buf = GIT_BUF_INIT;
	git_buf system_buf = GIT_BUF_INIT;
	git_buf programdata_buf = GIT_BUF_INIT;
	int symlinks = 0;

	/*
	 * To emulate Git for Windows, symlinks on Windows must be explicitly
	 * opted-in.  We examine the system configuration for a core.symlinks
	 * set to true.  If found, we then examine the filesystem to see if
	 * symlinks are _actually_ supported by the current user.  If that is
	 * _not_ set, then we do not test or enable symlink support.
	 */
#ifdef GIT_WIN32
	git_config_find_global(&global_buf);
	git_config_find_xdg(&xdg_buf);
	git_config_find_system(&system_buf);
	git_config_find_programdata(&programdata_buf);

	if (load_config(&config, NULL,
	    path_unless_empty(&global_buf),
	    path_unless_empty(&xdg_buf),
	    path_unless_empty(&system_buf),
	    path_unless_empty(&programdata_buf)) < 0)
		goto done;

	if (git_config_get_bool(&symlinks, config, "core.symlinks") < 0 || !symlinks)
		goto done;
#endif

	if (!(symlinks = FUNC7(wd_path)))
		goto done;

done:
	FUNC0(&global_buf);
	FUNC0(&xdg_buf);
	FUNC0(&system_buf);
	FUNC0(&programdata_buf);
	FUNC5(config);
	return symlinks != 0;
}