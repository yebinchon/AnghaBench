#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_9__ {TYPE_2__* tree; } ;
typedef  TYPE_1__ git_index ;
struct TYPE_10__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  children_count; int /*<<< orphan*/  entry_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

void FUNC13(void)
{
	git_index *index;
	git_tree *tree;
	git_oid id;
	const char *tree_id_str = "45dd856fdd4d89b884c340ba0e047752d9b085d6";
	const char *index_file = "index-tree";

	FUNC2(FUNC5(&index, index_file));
	FUNC0(index->tree == NULL);
	FUNC2(FUNC9(&id, tree_id_str));
	FUNC2(FUNC11(&tree, g_repo, &id));
	FUNC2(FUNC6(index, tree));
	FUNC10(tree);

	FUNC0(index->tree);
	FUNC2(FUNC7(index));
	FUNC4(index);

	FUNC2(FUNC5(&index, index_file));
	FUNC0(index->tree);

	FUNC1(FUNC3(index), index->tree->entry_count);
	FUNC1(0, index->tree->children_count);

	FUNC0(FUNC8(&id, &index->tree->oid));

	FUNC2(FUNC12(index_file));
	FUNC4(index);
}