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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_actualobject ; 
 int /*<<< orphan*/  g_expectedobject ; 
 int /*<<< orphan*/  g_head_commit ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  g_root_tree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	git_reference *head;
	git_tree_entry *tree_entry;

	FUNC1(FUNC7(&g_repo, FUNC0("attr/.gitted")));

	FUNC1(FUNC6(&head, g_repo));
	FUNC1(FUNC5((git_object**)&g_head_commit, head, GIT_OBJECT_COMMIT));
	FUNC1(FUNC2(&g_root_tree, g_head_commit));
	FUNC1(FUNC8(&tree_entry, g_root_tree, "subdir/subdir_test2.txt"));
	FUNC1(FUNC3(&g_expectedobject, g_repo, FUNC10(tree_entry),
				GIT_OBJECT_ANY));

	FUNC9(tree_entry);
	FUNC4(head);

	g_actualobject = NULL;
}