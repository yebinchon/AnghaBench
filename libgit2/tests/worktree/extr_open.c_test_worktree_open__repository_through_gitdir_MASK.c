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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_REPO ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  WORKTREE_REPO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_buf gitdir_path = GIT_BUF_INIT;
	git_repository *wt;

	FUNC1(FUNC3(&gitdir_path, COMMON_REPO, ".git"));
	FUNC1(FUNC3(&gitdir_path, gitdir_path.ptr, "worktrees"));
	FUNC1(FUNC3(&gitdir_path, gitdir_path.ptr, "testrepo-worktree"));

	FUNC1(FUNC5(&wt, gitdir_path.ptr));
	FUNC0(wt, COMMON_REPO, WORKTREE_REPO);

	FUNC2(&gitdir_path);
	FUNC4(wt);
}