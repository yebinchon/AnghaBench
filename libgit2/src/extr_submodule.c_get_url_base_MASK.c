#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent_path; } ;
typedef  TYPE_1__ git_worktree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(git_buf *url, git_repository *repo)
{
	int error;
	git_worktree *wt = NULL;
	git_remote *remote = NULL;

	if ((error = FUNC8(&remote, repo)) == 0) {
		error = FUNC0(url, FUNC3(remote));
		goto out;
	} else if (error != GIT_ENOTFOUND)
		goto out;
	else
		FUNC1();

	/* if repository does not have a default remote, use workdir instead */
	if (FUNC4(repo)) {
		if ((error = FUNC7(&wt, repo)) < 0)
			goto out;
		error = FUNC0(url, wt->parent_path);
	} else
		error = FUNC0(url, FUNC5(repo));

out:
	FUNC2(remote);
	FUNC6(wt);

	return error;
}