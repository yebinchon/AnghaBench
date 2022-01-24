#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* email; } ;
typedef  TYPE_1__ git_signature ;
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int GIT_SORT_REVERSE ; 
 int GIT_SORT_TOPOLOGICAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void FUNC12(git_repository *repo)
{
	const git_signature *cauth;
	const char *cmsg;
	int error;
	git_revwalk *walk;
	git_commit *wcommit;
	git_oid oid;

	FUNC11("\n*Revwalking*\n");

	FUNC5(&oid, "5b5b025afb0b4c913b4c338a42934a3863bf3644");

	/**
	 * To use the revwalker, create a new walker, tell it how you want to sort
	 * the output and then push one or more starting points onto the walker.
	 * If you want to emulate the output of `git log` you would push the SHA
	 * of the commit that HEAD points to into the walker and then start
	 * traversing them.  You can also 'hide' commits that you want to stop at
	 * or not see any of their ancestors.  So if you want to emulate `git log
	 * branch1..branch2`, you would push the oid of `branch2` and hide the oid
	 * of `branch1`.
	 */
	FUNC7(&walk, repo);
	FUNC10(walk, GIT_SORT_TOPOLOGICAL | GIT_SORT_REVERSE);
	FUNC9(walk, &oid);

	/**
	 * Now that we have the starting point pushed onto the walker, we start
	 * asking for ancestors. It will return them in the sorting order we asked
	 * for as commit oids.  We can then lookup and parse the committed pointed
	 * at by the returned OID; note that this operation is specially fast
	 * since the raw contents of the commit object will be cached in memory
	 */
	while ((FUNC8(&oid, walk)) == 0) {
		error = FUNC3(&wcommit, repo, &oid);
		FUNC0(error, "looking up commit during revwalk");

		cmsg  = FUNC4(wcommit);
		cauth = FUNC1(wcommit);
		FUNC11("%s (%s)\n", cmsg, cauth->email);

		FUNC2(wcommit);
	}

	/**
	 * Like the other objects, be sure to free the revwalker when you're done
	 * to prevent memory leaks.  Also, make sure that the repository being
	 * walked it not deallocated while the walk is in progress, or it will
	 * result in undefined behavior
	 */
	FUNC6(walk);
}