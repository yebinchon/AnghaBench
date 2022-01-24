#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_worktree ;
struct TYPE_12__ {int /*<<< orphan*/  gitdir; int /*<<< orphan*/  commondir; int /*<<< orphan*/  workdir; } ;
typedef  TYPE_1__ git_repository ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fixture ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 () ; 

void FUNC12(void)
{
	git_repository *repo, *sm, *wt;
	git_worktree *worktree;
	git_buf path = GIT_BUF_INIT;

	FUNC2(&fixture);
	repo = FUNC11();

	FUNC1(FUNC4(&path, repo->workdir, "sm_unchanged"));
	FUNC1(FUNC7(&sm, path.ptr));
	FUNC1(FUNC4(&path, repo->workdir, "../worktree/"));
	FUNC1(FUNC9(&worktree, sm, "repo-worktree", path.ptr, NULL));
	FUNC1(FUNC8(&wt, worktree));

	FUNC1(FUNC5(&path, path.ptr, NULL));
	FUNC0(path.ptr, wt->workdir);
	FUNC1(FUNC5(&path, sm->commondir, NULL));
	FUNC0(sm->commondir, wt->commondir);

	FUNC1(FUNC4(&path, sm->gitdir, "worktrees/repo-worktree/"));
	FUNC0(path.ptr, wt->gitdir);

	FUNC3(&path);
	FUNC10(worktree);
	FUNC6(sm);
	FUNC6(wt);
}