#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  popts ;
struct TYPE_16__ {int flags; } ;
typedef  TYPE_1__ git_worktree_prune_options ;
struct TYPE_17__ {int /*<<< orphan*/  gitlink_path; int /*<<< orphan*/  name; int /*<<< orphan*/  commondir_path; } ;
typedef  TYPE_2__ git_worktree ;
struct TYPE_18__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ERROR_WORKTREE ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_WORKTREE_PRUNE_OPTIONS_VERSION ; 
 int GIT_WORKTREE_PRUNE_WORKING_TREE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int) ; 

int FUNC10(git_worktree *wt,
	git_worktree_prune_options *opts)
{
	git_worktree_prune_options popts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
	git_buf path = GIT_BUF_INIT;
	char *wtpath;
	int err;

	FUNC0(
		opts, GIT_WORKTREE_PRUNE_OPTIONS_VERSION,
		"git_worktree_prune_options");

	if (opts)
		FUNC9(&popts, opts, sizeof(popts));

	if (!FUNC8(wt, &popts)) {
		err = -1;
		goto out;
	}

	/* Delete gitdir in parent repository */
	if ((err = FUNC3(&path, "%s/worktrees/%s", wt->commondir_path, wt->name)) < 0)
		goto out;
	if (!FUNC7(path.ptr))
	{
		FUNC4(GIT_ERROR_WORKTREE, "worktree gitdir '%s' does not exist", path.ptr);
		err = -1;
		goto out;
	}
	if ((err = FUNC5(path.ptr, NULL, GIT_RMDIR_REMOVE_FILES)) < 0)
		goto out;

	/* Skip deletion of the actual working tree if it does
	 * not exist or deletion was not requested */
	if ((popts.flags & GIT_WORKTREE_PRUNE_WORKING_TREE) == 0 ||
		!FUNC7(wt->gitlink_path))
	{
		goto out;
	}

	if ((wtpath = FUNC6(wt->gitlink_path)) == NULL)
		goto out;
	FUNC1(&path, wtpath, 0);
	if (!FUNC7(path.ptr))
	{
		FUNC4(GIT_ERROR_WORKTREE, "working tree '%s' does not exist", path.ptr);
		err = -1;
		goto out;
	}
	if ((err = FUNC5(path.ptr, NULL, GIT_RMDIR_REMOVE_FILES)) < 0)
		goto out;

out:
	FUNC2(&path);

	return err;
}