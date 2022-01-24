#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_worktree ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_REPO ; 
 int /*<<< orphan*/  WORKTREE_REPO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	git_worktree *wt;
	git_repository *wtrepo;

	FUNC1(FUNC8(&wt, g_repo, "name", WORKTREE_REPO, NULL));
	FUNC0(FUNC10(wt), FUNC2(0, WORKTREE_REPO, NULL));

	FUNC1(FUNC5(&wtrepo, WORKTREE_REPO));
	FUNC0(FUNC6(wtrepo), FUNC2(1, COMMON_REPO, "worktrees", "name", NULL));

	FUNC0(FUNC3(g_repo), FUNC3(wtrepo));
	FUNC0(FUNC7(wtrepo), FUNC2(1, WORKTREE_REPO, NULL));

	FUNC4(wtrepo);
	FUNC9(wt);
}