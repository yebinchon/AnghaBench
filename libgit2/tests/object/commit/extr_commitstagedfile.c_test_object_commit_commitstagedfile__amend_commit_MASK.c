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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC19(void)
{
	git_index *index;
	git_oid old_oid, new_oid, tree_oid;
	git_commit *old_commit, *new_commit;
	git_tree *tree;

	/* make a commit */

	FUNC5("treebuilder/myfile", "This is a file\n");
	FUNC6(FUNC15(&index, repo));
	FUNC6(FUNC12(index, "myfile"));
	FUNC7(&old_oid, repo, NULL, 0, "first commit");

	FUNC6(FUNC10(&old_commit, repo, &old_oid));

	FUNC2(0, FUNC11(old_commit));
	FUNC1(old_commit, 1);
	FUNC0(old_commit);

	/* let's amend the message of the HEAD commit */

	FUNC6(FUNC8(
		&new_oid, old_commit, "HEAD", NULL, NULL, NULL, "Initial commit", NULL));

	/* fail because the commit isn't the tip of the branch anymore */
	FUNC3(FUNC8(
		&new_oid, old_commit, "HEAD", NULL, NULL, NULL, "Initial commit", NULL));

	FUNC6(FUNC10(&new_commit, repo, &new_oid));

	FUNC2(0, FUNC11(new_commit));
	FUNC1(new_commit, 1);
	FUNC0(new_commit);

	FUNC9(old_commit);

	old_commit = new_commit;

	/* let's amend the tree of that last commit */

	FUNC5("treebuilder/anotherfile", "This is another file\n");
	FUNC6(FUNC12(index, "anotherfile"));
	FUNC6(FUNC14(&tree_oid, index));
	FUNC6(FUNC18(&tree, repo, &tree_oid));
	FUNC2(2, FUNC16(tree));

	/* fail to amend on a ref which does not exist */
	FUNC4(GIT_ENOTFOUND, FUNC8(
		&new_oid, old_commit, "refs/heads/nope", NULL, NULL, NULL, "Initial commit", tree));

	FUNC6(FUNC8(
		&new_oid, old_commit, "HEAD", NULL, NULL, NULL, "Initial commit", tree));
	FUNC17(tree);

	FUNC6(FUNC10(&new_commit, repo, &new_oid));

	FUNC2(0, FUNC11(new_commit));
	FUNC1(new_commit, 2);
	FUNC0(new_commit);

	/* cleanup */

	FUNC9(old_commit);
	FUNC9(new_commit);
	FUNC13(index);
}