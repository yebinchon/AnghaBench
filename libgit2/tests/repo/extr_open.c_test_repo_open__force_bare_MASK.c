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
 int GIT_REPOSITORY_OPEN_BARE ; 
 int GIT_REPOSITORY_OPEN_CROSS_FS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

void FUNC12(void)
{
	/* need to have both repo dir and workdir set up correctly */
	git_repository *repo = FUNC4("empty_standard_repo");
	git_repository *barerepo;

	FUNC10("alternate", "gitdir: ../empty_standard_repo/.git");

	FUNC0(!FUNC6(repo));

	FUNC3(FUNC7(&barerepo, "alternate"));
	FUNC0(!FUNC6(barerepo));
	FUNC5(barerepo);

	FUNC3(FUNC8(
		&barerepo, "empty_standard_repo/.git"));
	FUNC0(FUNC6(barerepo));
	FUNC5(barerepo);

	FUNC1(FUNC8(&barerepo, "alternate/.git"));

	FUNC3(FUNC9(
		&barerepo, "alternate/.git", GIT_REPOSITORY_OPEN_BARE, NULL));
	FUNC0(FUNC6(barerepo));
	FUNC5(barerepo);

	FUNC3(FUNC11("empty_standard_repo/subdir", 0777));
	FUNC2("empty_standard_repo/subdir/something.txt", "something");

	FUNC1(FUNC8(
		&barerepo, "empty_standard_repo/subdir"));

	FUNC3(FUNC9(
		&barerepo, "empty_standard_repo/subdir", GIT_REPOSITORY_OPEN_BARE, NULL));
	FUNC0(FUNC6(barerepo));
	FUNC5(barerepo);

	FUNC3(FUNC11("alternate/subdir", 0777));
	FUNC3(FUNC11("alternate/subdir/sub2", 0777));
	FUNC2("alternate/subdir/sub2/something.txt", "something");

	FUNC1(FUNC8(&barerepo, "alternate/subdir/sub2"));

	FUNC3(FUNC9(
		&barerepo, "alternate/subdir/sub2",
		GIT_REPOSITORY_OPEN_BARE|GIT_REPOSITORY_OPEN_CROSS_FS, NULL));
	FUNC0(FUNC6(barerepo));
	FUNC5(barerepo);
}