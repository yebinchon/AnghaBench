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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tree_oid ; 

void FUNC7(void)
{
	/* acces randomly the entries on a loaded tree */
	git_oid id;
	git_tree *tree;

	FUNC2(&id, tree_oid);

	FUNC1(FUNC6(&tree, g_repo, &id));

	FUNC0(FUNC4(tree, "README") != NULL);
	FUNC0(FUNC4(tree, "NOTEXISTS") == NULL);
	FUNC0(FUNC4(tree, "") == NULL);
	FUNC0(FUNC3(tree, 0) != NULL);
	FUNC0(FUNC3(tree, 2) != NULL);
	FUNC0(FUNC3(tree, 3) == NULL);
	FUNC0(FUNC3(tree, (unsigned int)-1) == NULL);

	FUNC5(tree);
}