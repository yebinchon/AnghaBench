#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_worktree ;
struct TYPE_8__ {int /*<<< orphan*/  commondir; } ;
typedef  TYPE_1__ git_repository ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int FUNC6(git_worktree **out, git_repository *repo, const char *name)
{
	git_buf path = GIT_BUF_INIT;
	git_worktree *wt = NULL;
	int error;

	FUNC0(repo && name);

	*out = NULL;

	if ((error = FUNC2(&path, "%s/worktrees/%s", repo->commondir, name)) < 0)
		goto out;

	if ((error = (FUNC5(out, FUNC3(repo), path.ptr, name))) < 0)
		goto out;

out:
	FUNC1(&path);

	if (error)
		FUNC4(wt);

	return error;
}