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
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  blob_oid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  first_tree ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  second_tree ; 
 int /*<<< orphan*/  third_tree ; 

void FUNC11(void)
{
	/* write a hierarchical tree from a memory */
	git_treebuilder *builder;
	git_tree *tree;
	git_oid id, bid, subtree_id, id2, id3;
	git_oid id_hiearar;

	FUNC3(&id, first_tree);
	FUNC3(&id2, second_tree);
	FUNC3(&id3, third_tree);
	FUNC3(&bid, blob_oid);

	/* create subtree */
	FUNC1(FUNC9(&builder, g_repo, NULL));
	FUNC1(FUNC8(
		NULL, builder, "new.txt", &bid, GIT_FILEMODE_BLOB)); /* -V536 */
	FUNC1(FUNC10(&subtree_id, builder));
	FUNC7(builder);

	/* create parent tree */
	FUNC1(FUNC6(&tree, g_repo, &id));
	FUNC1(FUNC9(&builder, g_repo, tree));
	FUNC1(FUNC8(
		NULL, builder, "new", &subtree_id, GIT_FILEMODE_TREE)); /* -V536 */
	FUNC1(FUNC10(&id_hiearar, builder));
	FUNC7(builder);
	FUNC5(tree);

	FUNC0(FUNC2(&id_hiearar, &id3) == 0);

	/* check data is correct */
	FUNC1(FUNC6(&tree, g_repo, &id_hiearar));
	FUNC0(2 == FUNC4(tree));
	FUNC5(tree);
}