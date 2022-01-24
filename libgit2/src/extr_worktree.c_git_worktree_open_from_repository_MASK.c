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
typedef  int /*<<< orphan*/  git_worktree ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_WORKTREE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (TYPE_1__*,char*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char*) ; 

int FUNC9(git_worktree **out, git_repository *repo)
{
	git_buf parent = GIT_BUF_INIT;
	const char *gitdir, *commondir;
	char *name = NULL;
	int error = 0;

	if (!FUNC6(repo)) {
		FUNC2(GIT_ERROR_WORKTREE, "cannot open worktree of a non-worktree repo");
		error = -1;
		goto out;
	}

	gitdir = FUNC7(repo);
	commondir = FUNC5(repo);

	if ((error = FUNC4(&parent, "..", commondir)) < 0)
		goto out;

	/* The name is defined by the last component in '.git/worktree/%s' */
	name = FUNC3(gitdir);

	if ((error = FUNC8(out, parent.ptr, gitdir, name)) < 0)
		goto out;

out:
	FUNC0(name);
	FUNC1(&parent);

	return error;
}