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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_diff_driver ;
typedef  int /*<<< orphan*/  git_attr_session ;

/* Variables and functions */
 size_t DIFF_DRIVER_AUTO ; 
 size_t DIFF_DRIVER_BINARY ; 
 size_t DIFF_DRIVER_TEXT ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,char const**) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * global_drivers ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

int FUNC8(
	git_diff_driver **out, git_repository *repo,
	git_attr_session *attrsession, const char *path)
{
	int error = 0;
	const char *values[1], *attrs[] = { "diff" };

	FUNC3(out);
	*out = NULL;

	if (!repo || !path || !FUNC7(path))
		/* just use the auto value */;
	else if ((error = FUNC4(values, repo,
			attrsession, 0, path, 1, attrs)) < 0)
		/* return error below */;

	else if (FUNC2(values[0]))
		/* just use the auto value */;
	else if (FUNC0(values[0]))
		*out = &global_drivers[DIFF_DRIVER_BINARY];
	else if (FUNC1(values[0]))
		*out = &global_drivers[DIFF_DRIVER_TEXT];

	/* otherwise look for driver information in config and build driver */
	else if ((error = FUNC5(out, repo, values[0])) < 0) {
		if (error == GIT_ENOTFOUND) {
			error = 0;
			FUNC6();
		}
	}

	if (!*out)
		*out = &global_drivers[DIFF_DRIVER_AUTO];

	return error;
}