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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tree_oid ; 

void FUNC13(void)
{
	/* read a tree from the repository */
	git_oid id;
	git_tree *tree;
	const git_tree_entry *entry;
	git_object *obj;

	FUNC6(&id, tree_oid);

	FUNC3(FUNC12(&tree, g_repo, &id));

	FUNC0(FUNC10(tree) == 3);

	/* GH-86: git_object_lookup() should also check the type if the object comes from the cache */
	FUNC0(FUNC5(&obj, g_repo, &id, GIT_OBJECT_TREE) == 0);
	FUNC0(obj != NULL);
	FUNC4(obj);
	obj = NULL;
	FUNC2(FUNC5(&obj, g_repo, &id, GIT_OBJECT_BLOB));
	FUNC0(obj == NULL);

	entry = FUNC7(tree, "README");
	FUNC0(entry != NULL);

	FUNC1(FUNC8(entry), "README");

	FUNC3(FUNC9(&obj, g_repo, entry));
	FUNC0(obj != NULL);

	FUNC4(obj);
	FUNC11(tree);
}