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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 

void FUNC10(void)
{
	git_repository *repo;
	git_reference *head, *with_at;
	git_object *target;
	
	repo = FUNC3("testrepo.git");

	FUNC0(GIT_ENOTFOUND,
		FUNC9(&target, repo, "origin/bim_with_3d@11296"));

	FUNC0(GIT_ENOTFOUND,
		FUNC9(&target, repo, "refs/remotes/origin/bim_with_3d@11296"));


	FUNC1(FUNC8(&head, repo));
	FUNC1(FUNC5(
		&with_at,
		repo,
		"refs/remotes/origin/bim_with_3d@11296",
		FUNC7(head),
		0,
		NULL));

	FUNC1(FUNC9(&target, repo, "origin/bim_with_3d@11296"));
	FUNC4(target);

	FUNC1(FUNC9(&target, repo, "refs/remotes/origin/bim_with_3d@11296"));
	FUNC4(target);

	FUNC6(with_at);
	FUNC6(head);
	FUNC2();
}