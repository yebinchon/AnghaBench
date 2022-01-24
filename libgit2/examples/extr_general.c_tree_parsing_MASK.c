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
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void FUNC10(git_repository *repo)
{
	const git_tree_entry *entry;
	size_t cnt;
	git_object *obj;
	git_tree *tree;
	git_oid oid;

	FUNC9("\n*Tree Parsing*\n");

	/**
	 * Create the oid and lookup the tree object just like the other objects.
	 */
	FUNC1(&oid, "f60079018b664e4e79329a7ef9559c8d9e0378d1");
	FUNC8(&tree, repo, &oid);

	/**
	 * Getting the count of entries in the tree so you can iterate over them
	 * if you want to.
	 */
	cnt = FUNC6(tree); /* 2 */
	FUNC9("tree entries: %d\n", (int) cnt);

	entry = FUNC2(tree, 0);
	FUNC9("Entry name: %s\n", FUNC4(entry)); /* "README" */

	/**
	 * You can also access tree entries by name if you know the name of the
	 * entry you're looking for.
	 */
	entry = FUNC3(tree, "README");
	FUNC4(entry); /* "README" */

	/**
	 * Once you have the entry object, you can access the content or subtree
	 * (or commit, in the case of submodules) that it points to.  You can also
	 * get the mode if you want.
	 */
	FUNC5(&obj, repo, entry); /* blob */

	/**
	 * Remember to close the looked-up object and tree once you are done using it
	 */
	FUNC0(obj);
	FUNC7(tree);
}