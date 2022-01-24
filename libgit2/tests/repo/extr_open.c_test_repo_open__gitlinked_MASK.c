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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

void FUNC11(void)
{
	/* need to have both repo dir and workdir set up correctly */
	git_repository *repo = FUNC4("empty_standard_repo");
	git_repository *repo2;

	FUNC10("alternate", "gitdir: ../empty_standard_repo/.git");

	FUNC3(FUNC7(&repo2, "alternate"));

	FUNC0(FUNC8(repo2) != NULL);
	FUNC1(FUNC5(FUNC8(repo2), "empty_standard_repo/.git/") == 0, FUNC8(repo2));
	FUNC2(FUNC8(repo), FUNC8(repo2));

	FUNC0(FUNC9(repo2) != NULL);
	FUNC1(FUNC5(FUNC9(repo2), "alternate/") == 0, FUNC9(repo2));

	FUNC6(repo2);
}