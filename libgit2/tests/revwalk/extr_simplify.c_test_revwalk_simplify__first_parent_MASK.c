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
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_SORT_TOPOLOGICAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  commit_head ; 
 int /*<<< orphan*/ * expected_str ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_repository *repo;
	git_revwalk *walk;
	git_oid id, expected[4];
	int i, error;

	for (i = 0; i < 4; i++) {
		FUNC4(&expected[i], expected_str[i]);
	}

	repo = FUNC3("testrepo.git");
	FUNC2(FUNC6(&walk, repo));

	FUNC4(&id, commit_head);
	FUNC2(FUNC8(walk, &id));
	FUNC10(walk, GIT_SORT_TOPOLOGICAL);
	FUNC9(walk);

	i = 0;
	while ((error = FUNC7(&id, walk)) == 0) {
		FUNC1(&expected[i], &id);
		i++;
	}

	FUNC0(i, 4);
	FUNC0(error, GIT_ITEROVER);

	FUNC5(walk);
}