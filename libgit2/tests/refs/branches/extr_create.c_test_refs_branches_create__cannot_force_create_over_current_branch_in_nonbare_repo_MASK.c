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
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 int /*<<< orphan*/ * branch ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target ; 

void FUNC14(void)
{
	const git_oid *oid;
	git_reference *branch2;

	/* Default repo for these tests is a bare repo, but this test requires a non-bare one */
	FUNC4();
	repo = FUNC5("testrepo");
	FUNC13(&target, repo);

	FUNC3(FUNC8(&branch2, repo, "master", GIT_BRANCH_LOCAL));
	FUNC1("refs/heads/master", FUNC11(branch2));
	FUNC0(true, FUNC7(branch2));
	oid = FUNC12(branch2);

	FUNC2(-1, FUNC6(&branch, repo, "master", target, 1));
	branch = NULL;
	FUNC3(FUNC8(&branch, repo, "master", GIT_BRANCH_LOCAL));
	FUNC1("refs/heads/master", FUNC11(branch));
	FUNC3(FUNC9(FUNC12(branch), oid));
	FUNC10(branch2);
}