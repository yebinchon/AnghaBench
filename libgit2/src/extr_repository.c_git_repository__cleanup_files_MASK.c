#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_RMDIR_REMOVE_BLOCKERS ; 
 int GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (char const*) ; 

int FUNC8(
	git_repository *repo, const char *files[], size_t files_len)
{
	git_buf buf = GIT_BUF_INIT;
	size_t i;
	int error;

	for (error = 0, i = 0; !error && i < files_len; ++i) {
		const char *path;

		if (FUNC3(&buf, repo->gitdir, files[i]) < 0)
			return -1;

		path = FUNC1(&buf);

		if (FUNC6(path)) {
			error = FUNC7(path);
		} else if (FUNC5(path)) {
			error = FUNC4(path, NULL,
				GIT_RMDIR_REMOVE_FILES | GIT_RMDIR_REMOVE_BLOCKERS);
		}

		FUNC0(&buf);
	}

	FUNC2(&buf);
	return error;
}