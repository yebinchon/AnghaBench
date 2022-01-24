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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * paths ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_commit *commit;
	git_oid oid;

	/* Set the alternate A -> testrepo.git */
	FUNC7(paths[0], FUNC0("testrepo.git"));

	/* Set the alternate B -> A */
	FUNC7(paths[1], paths[0]);

	/* Now load B and see if we can find an object from testrepo.git */
	FUNC1(FUNC6(&repo, paths[1]));
	FUNC4(&oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC1(FUNC3(&commit, repo, &oid));
	FUNC2(commit);
	FUNC5(repo);
}