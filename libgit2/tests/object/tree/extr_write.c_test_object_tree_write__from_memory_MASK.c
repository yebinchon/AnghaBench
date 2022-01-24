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
typedef  int /*<<< orphan*/  git_treebuilder ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  blob_oid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  first_tree ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  second_tree ; 

void FUNC11(void)
{
	/* write a tree from a memory */
	git_treebuilder *builder;
	git_tree *tree;
	git_oid id, bid, rid, id2;

	FUNC4(&id, first_tree);
	FUNC4(&id2, second_tree);
	FUNC4(&bid, blob_oid);

	/* create a second tree from first tree using `git_treebuilder_insert`
	 * on REPOSITORY_FOLDER.
	 */
	FUNC2(FUNC6(&tree, g_repo, &id));
	FUNC2(FUNC9(&builder, g_repo, tree));

	FUNC1(FUNC8(NULL, builder, "",
		&bid, GIT_FILEMODE_BLOB));
	FUNC1(FUNC8(NULL, builder, "/",
		&bid, GIT_FILEMODE_BLOB));
	FUNC1(FUNC8(NULL, builder, ".git",
		&bid, GIT_FILEMODE_BLOB));
	FUNC1(FUNC8(NULL, builder, "..",
		&bid, GIT_FILEMODE_BLOB));
	FUNC1(FUNC8(NULL, builder, ".",
		&bid, GIT_FILEMODE_BLOB));
	FUNC1(FUNC8(NULL, builder, "folder/new.txt",
		&bid, GIT_FILEMODE_BLOB));

	FUNC2(FUNC8(
		NULL, builder, "new.txt", &bid, GIT_FILEMODE_BLOB));

	FUNC2(FUNC10(&rid, builder));

	FUNC0(FUNC3(&rid, &id2) == 0);

	FUNC7(builder);
	FUNC5(tree);
}