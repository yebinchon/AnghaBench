#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_7__ {int seconds; } ;
struct TYPE_6__ {int seconds; } ;
struct TYPE_8__ {int mode; char* path; int /*<<< orphan*/  id; scalar_t__ file_size; TYPE_2__ mtime; TYPE_1__ ctime; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_empty_id ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC10(void)
{
	git_index_entry entry;
	git_tree_entry *tentry;
	git_oid tree_id;
	git_tree *tree;

	FUNC9(&entry, 0, sizeof(entry));
	entry.ctime.seconds = 12346789;
	entry.mtime.seconds = 12346789;
	entry.mode  = 0100644;
	entry.file_size = 0;
	FUNC4(&entry.id, &g_empty_id);

	entry.path = "a/b/c";
	FUNC1(FUNC2(g_index, &entry));

	/* Check a/b/c exists here */
	FUNC1(FUNC3(&tree_id, g_index));
	FUNC1(FUNC8(&tree, g_repo, &tree_id));
	FUNC1(FUNC5(&tentry, tree, "a/b/c"));
	FUNC6(tentry);
	FUNC7(tree);

	/* create a blob/tree collision */
	entry.path = "a/b";
	FUNC1(FUNC2(g_index, &entry));

	/* a/b should now be a tree and a/b/c a blob */
	FUNC1(FUNC3(&tree_id, g_index));
	FUNC1(FUNC8(&tree, g_repo, &tree_id));
	FUNC1(FUNC5(&tentry, tree, "a/b"));
	FUNC0(FUNC5(&tentry, tree, "a/b/c"));
	FUNC6(tentry);
	FUNC7(tree);
}