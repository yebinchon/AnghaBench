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
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  tree_oid ; 

void FUNC12(void)
{
	git_treebuilder *builder;
	git_oid tid, tid2;
	git_tree *tree;
	const git_tree_entry *entry;

	FUNC2(FUNC3(&tid, tree_oid));
	FUNC2(FUNC7(&tree, repo, &tid));

	FUNC2(FUNC10(&builder, repo, tree));
	
	entry = FUNC9(builder, "old_mode.txt");
	FUNC0(entry != NULL);
	FUNC1(
		GIT_FILEMODE_BLOB,
		FUNC5(entry));

	FUNC2(FUNC11(&tid2, builder));
	FUNC8(builder);
	FUNC6(tree);

	FUNC2(FUNC7(&tree, repo, &tid2));
	entry = FUNC4(tree, "old_mode.txt");
	FUNC0(entry != NULL);
	FUNC1(
		GIT_FILEMODE_BLOB,
		FUNC5(entry));

	FUNC6(tree);
}