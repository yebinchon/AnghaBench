#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_worktree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_9__ {TYPE_2__* repo; } ;
struct TYPE_8__ {int /*<<< orphan*/  workdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__ fixture ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	git_worktree *wt;
	git_repository *repo;
	git_reference *branch;
	git_buf path = GIT_BUF_INIT;

	FUNC1(FUNC5(&path, fixture.repo->workdir, "../worktree-new"));
	FUNC1(FUNC10(&wt, fixture.repo, "worktree-new", path.ptr, NULL));

	/* Open and verify created repo */
	FUNC1(FUNC8(&repo, path.ptr));
	FUNC0(FUNC2(FUNC9(repo), "worktree-new/") == 0);
	FUNC1(FUNC3(&branch, repo, "worktree-new", GIT_BRANCH_LOCAL));

	FUNC4(&path);
	FUNC11(wt);
	FUNC6(branch);
	FUNC7(repo);
}