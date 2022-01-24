#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int locked; int /*<<< orphan*/  gitdir_path; int /*<<< orphan*/ * gitlink_path; int /*<<< orphan*/ * worktree_path; int /*<<< orphan*/ * parent_path; int /*<<< orphan*/ * commondir_path; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ git_worktree ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 TYPE_1__* FUNC0 (int,int) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(git_worktree **out, const char *parent, const char *dir, const char *name)
{
	git_buf gitdir = GIT_BUF_INIT;
	git_worktree *wt = NULL;
	int error = 0;

	if (!FUNC9(dir)) {
		error = -1;
		goto out;
	}

	if ((wt = FUNC0(1, sizeof(*wt))) == NULL) {
		error = -1;
		goto out;
	}

	if ((wt->name = FUNC1(name)) == NULL
	    || (wt->commondir_path = FUNC6(dir, "commondir")) == NULL
	    || (wt->gitlink_path = FUNC6(dir, "gitdir")) == NULL
	    || (parent && (wt->parent_path = FUNC1(parent)) == NULL)
	    || (wt->worktree_path = FUNC4(wt->gitlink_path)) == NULL) {
		error = -1;
		goto out;
	}

	if ((error = FUNC5(&gitdir, dir, NULL)) < 0)
		goto out;
	wt->gitdir_path = FUNC2(&gitdir);

	wt->locked = !!FUNC8(NULL, wt);

	*out = wt;

out:
	if (error)
		FUNC7(wt);
	FUNC3(&gitdir);

	return error;
}