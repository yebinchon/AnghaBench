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
 int /*<<< orphan*/  GIT_TREEWALK_POST ; 
 int /*<<< orphan*/  GIT_TREEWALK_PRE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  tree_oid ; 
 int /*<<< orphan*/  treewalk_stop_cb ; 
 int /*<<< orphan*/  treewalk_stop_immediately_cb ; 

void FUNC6(void)
{
	git_oid id;
	git_tree *tree;
	int ct;

	FUNC2(&id, tree_oid);

	FUNC1(FUNC4(&tree, g_repo, &id));

	ct = 0;
	FUNC0(
		-123, FUNC5(tree, GIT_TREEWALK_PRE, treewalk_stop_cb, &ct));
	FUNC0(2, ct);

	ct = 0;
	FUNC0(
		-123, FUNC5(tree, GIT_TREEWALK_POST, treewalk_stop_cb, &ct));
	FUNC0(2, ct);

	FUNC0(
		-100, FUNC5(
			tree, GIT_TREEWALK_PRE, treewalk_stop_immediately_cb, NULL));

	FUNC0(
		-100, FUNC5(
			tree, GIT_TREEWALK_POST, treewalk_stop_immediately_cb, NULL));

	FUNC3(tree);
}