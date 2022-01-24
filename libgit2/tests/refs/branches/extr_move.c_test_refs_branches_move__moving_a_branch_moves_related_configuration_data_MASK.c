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
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC5(void)
{
	git_reference *branch;
	git_reference *new_branch;

	FUNC1(FUNC2(&branch, repo, "track-local", GIT_BRANCH_LOCAL));

	FUNC0(repo, "branch.track-local.remote", true);
	FUNC0(repo, "branch.track-local.merge", true);
	FUNC0(repo, "branch.moved.remote", false);
	FUNC0(repo, "branch.moved.merge", false);

	FUNC1(FUNC3(&new_branch, branch, "moved", 0));
	FUNC4(branch);

	FUNC0(repo, "branch.track-local.remote", false);
	FUNC0(repo, "branch.track-local.merge", false);
	FUNC0(repo, "branch.moved.remote", true);
	FUNC0(repo, "branch.moved.merge", true);

	FUNC4(new_branch);
}