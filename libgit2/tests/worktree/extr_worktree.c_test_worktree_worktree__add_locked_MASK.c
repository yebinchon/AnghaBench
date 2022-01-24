#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int lock; } ;
typedef  TYPE_1__ git_worktree_add_options ;
typedef  int /*<<< orphan*/  git_worktree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;
struct TYPE_13__ {TYPE_3__* repo; } ;
struct TYPE_12__ {int /*<<< orphan*/  workdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 TYPE_2__ GIT_BUF_INIT ; 
 TYPE_1__ GIT_WORKTREE_ADD_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__ fixture ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,TYPE_3__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC13(void)
{
	git_worktree *wt;
	git_repository *repo;
	git_reference *branch;
	git_buf path = GIT_BUF_INIT;
	git_worktree_add_options opts = GIT_WORKTREE_ADD_OPTIONS_INIT;

	opts.lock = 1;

	FUNC1(FUNC5(&path, fixture.repo->workdir, "../worktree-locked"));
	FUNC1(FUNC10(&wt, fixture.repo, "worktree-locked", path.ptr, &opts));

	/* Open and verify created repo */
	FUNC0(FUNC12(NULL, wt));
	FUNC1(FUNC8(&repo, path.ptr));
	FUNC0(FUNC2(FUNC9(repo), "worktree-locked/") == 0);
	FUNC1(FUNC3(&branch, repo, "worktree-locked", GIT_BRANCH_LOCAL));

	FUNC4(&path);
	FUNC11(wt);
	FUNC6(branch);
	FUNC7(repo);
}