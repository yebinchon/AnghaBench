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
struct stat {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_MERGE_MSG_FILE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC7(git_buf *out, git_repository *repo)
{
	git_buf path = GIT_BUF_INIT;
	struct stat st;
	int error;

	FUNC3(out);

	if (FUNC2(&path, repo->gitdir, GIT_MERGE_MSG_FILE) < 0)
		return -1;

	if ((error = FUNC6(FUNC0(&path), &st)) < 0) {
		if (errno == ENOENT)
			error = GIT_ENOTFOUND;
		FUNC4(GIT_ERROR_OS, "could not access message file");
	} else {
		error = FUNC5(out, FUNC0(&path));
	}

	FUNC1(&path);

	return error;
}