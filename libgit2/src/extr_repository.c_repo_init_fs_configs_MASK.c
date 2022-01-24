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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
	git_config *cfg,
	const char *cfg_path,
	const char *repo_dir,
	const char *work_dir,
	bool update_ignorecase)
{
	int error = 0;

	if (!work_dir)
		work_dir = repo_dir;

	if ((error = FUNC2(
			cfg, "core.filemode", FUNC5(cfg_path))) < 0)
		return error;

	if (!FUNC0(work_dir)) {
		if ((error = FUNC2(cfg, "core.symlinks", false)) < 0)
			return error;
	} else if (FUNC1(cfg, "core.symlinks") < 0)
		FUNC3();

	if (update_ignorecase) {
		if (FUNC6(repo_dir)) {
			if ((error = FUNC2(cfg, "core.ignorecase", true)) < 0)
				return error;
		} else if (FUNC1(cfg, "core.ignorecase") < 0)
			FUNC3();
	}

#ifdef GIT_USE_ICONV
	if ((error = git_config_set_bool(
			cfg, "core.precomposeunicode",
			git_path_does_fs_decompose_unicode(work_dir))) < 0)
		return error;
	/* on non-iconv platforms, don't even set core.precomposeunicode */
#endif

	return 0;
}