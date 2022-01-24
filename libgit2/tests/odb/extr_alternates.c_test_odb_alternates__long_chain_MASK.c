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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * paths ; 
 int /*<<< orphan*/  repo ; 

void FUNC9(void)
{
	git_commit *commit;
	git_oid oid;
	size_t i;

	/* Set the alternate A -> testrepo.git */
	FUNC8(paths[0], FUNC1("testrepo.git"));

	/* Set up the five-element chain */
	for (i = 1; i < FUNC0(paths); i++) {
		FUNC8(paths[i], paths[i-1]);
	}

	/* Now load the last one and see if we can find an object from testrepo.git */
	FUNC3(FUNC7(&repo, paths[FUNC0(paths)-1]));
	FUNC5(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC2(FUNC4(&commit, repo, &oid));
	FUNC6(repo);
}