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
typedef  int /*<<< orphan*/  git_config_backend ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int /*<<< orphan*/  GIT_MODULES_FILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static git_config_backend *FUNC7(
	git_repository *repo,
	int okay_to_create)
{
	const char *workdir = FUNC6(repo);
	git_buf path = GIT_BUF_INIT;
	git_config_backend *mods = NULL;

	if (workdir != NULL) {
		if (FUNC1(&path, workdir, GIT_MODULES_FILE) != 0)
			return NULL;

		if (okay_to_create || FUNC5(path.ptr)) {
			/* git_config_backend_from_file should only fail if OOM */
			if (FUNC3(&mods, path.ptr) < 0)
				mods = NULL;
			/* open should only fail here if the file is malformed */
			else if (FUNC4(mods, GIT_CONFIG_LEVEL_LOCAL, repo) < 0) {
				FUNC2(mods);
				mods = NULL;
			}
		}
	}

	FUNC0(&path);

	return mods;
}