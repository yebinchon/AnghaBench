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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 char* WORKTREE_REPO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fixture ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(void)
{
	git_repository *repo;

	FUNC5(&fixture);

	FUNC1(WORKTREE_REPO);
	FUNC3(FUNC7(WORKTREE_REPO));
	FUNC3(FUNC4(".gitted", ".git"));
	FUNC3(FUNC7(".."));

	FUNC2(FUNC6(&repo, WORKTREE_REPO));

	FUNC0(WORKTREE_REPO);
}