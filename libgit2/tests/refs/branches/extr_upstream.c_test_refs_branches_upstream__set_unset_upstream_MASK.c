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
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 

void FUNC8(void)
{
	git_reference *branch;
	git_repository *repository;

	repository = FUNC4("testrepo.git");

	/* remote */
	FUNC2(FUNC7(&branch, repository, "refs/heads/test"));
	FUNC2(FUNC5(branch, "test/master"));

	FUNC1(repository, "branch.test.remote", "test");
	FUNC1(repository, "branch.test.merge", "refs/heads/master");

	FUNC6(branch);

	/* local */
	FUNC2(FUNC7(&branch, repository, "refs/heads/test"));
	FUNC2(FUNC5(branch, "master"));

	FUNC1(repository, "branch.test.remote", ".");
	FUNC1(repository, "branch.test.merge", "refs/heads/master");

	/* unset */
	FUNC2(FUNC5(branch, NULL));
	FUNC0(repository, "branch.test.remote", false);
	FUNC0(repository, "branch.test.merge", false);

	FUNC6(branch);

	FUNC2(FUNC7(&branch, repository, "refs/heads/master"));
	FUNC2(FUNC5(branch, NULL));
	FUNC0(repository, "branch.test.remote", false);
	FUNC0(repository, "branch.test.merge", false);

	FUNC6(branch);

	FUNC3();
}