#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_14__ {char* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_15__ {TYPE_4__* tree; } ;
typedef  TYPE_2__ git_index ;
struct TYPE_17__ {int /*<<< orphan*/  id; } ;
struct TYPE_16__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  children_count; int /*<<< orphan*/  entry_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_8__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

void FUNC16(void)
{
	git_index *index;
	git_tree *tree;
	git_oid id;
	const char *tree_id_str = "45dd856fdd4d89b884c340ba0e047752d9b085d6";
	const char *index_file = "index-tree-invalidated";
	git_index_entry entry;

	FUNC2(FUNC6(&index, index_file));
	FUNC0(index->tree == NULL);
	FUNC2(FUNC11(&id, tree_id_str));
	FUNC2(FUNC13(&tree, g_repo, &id));
	FUNC2(FUNC7(index, tree));
	FUNC12(tree);

	FUNC0(index->tree);

	FUNC14(&entry, 0x0, sizeof(git_index_entry));
	FUNC10(&entry.id, &FUNC5(index, 0)->id);
	entry.mode = GIT_FILEMODE_BLOB;
	entry.path = "some-new-file.txt";

	FUNC2(FUNC3(index, &entry));

	FUNC1(-1, index->tree->entry_count);

	FUNC2(FUNC8(index));
	FUNC4(index);

	FUNC2(FUNC6(&index, index_file));
	FUNC0(index->tree);

	FUNC1(-1, index->tree->entry_count);
	FUNC1(0, index->tree->children_count);

	FUNC0(FUNC9(&id, &index->tree->oid));

	FUNC2(FUNC15(index_file));
	FUNC4(index);
}