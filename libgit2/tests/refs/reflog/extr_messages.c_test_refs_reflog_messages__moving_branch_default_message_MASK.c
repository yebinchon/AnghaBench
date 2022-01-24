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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_email ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_reference *branch;
	git_reference *new_branch;
	git_oid id;

	FUNC0(FUNC5(&branch, g_repo, "refs/heads/master"));
	FUNC3(&id, FUNC7(branch));
	FUNC0(FUNC2(&new_branch, branch, "master2", 0));

	FUNC1(g_repo, FUNC6(new_branch), 0,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		g_email,
		"branch: renamed refs/heads/master to refs/heads/master2");

	FUNC4(branch);
	FUNC4(new_branch);
}