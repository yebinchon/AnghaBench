#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  entry_count; int /*<<< orphan*/  children_count; } ;
typedef  TYPE_1__ git_tree_cache ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_16__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ git_index_entry ;
struct TYPE_17__ {TYPE_1__ const* tree; } ;
typedef  TYPE_3__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (TYPE_1__ const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int) ; 

void FUNC14(void)
{
	git_index *index;
	git_index_entry entry;
	git_tree *tree;
	const git_tree_cache *cache;
	git_oid tree_id;

	FUNC2(FUNC9(&index, g_repo));
	FUNC2(FUNC4(index));
	FUNC0(index->tree == NULL);


	/* add a bunch of entries at different levels */
	FUNC13(&entry, 0x0, sizeof(git_index_entry));
	entry.path = "top-level";
	entry.mode = GIT_FILEMODE_BLOB;
	FUNC8(&entry.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
	FUNC2(FUNC3(index, &entry));


	entry.path = "subdir/some-file";
	FUNC2(FUNC3(index, &entry));

	entry.path = "subdir/even-deeper/some-file";
	FUNC2(FUNC3(index, &entry));

	entry.path = "subdir2/some-file";
	FUNC2(FUNC3(index, &entry));

	FUNC2(FUNC7(&tree_id, index));
	FUNC2(FUNC4(index));
	FUNC0(index->tree == NULL);

	FUNC2(FUNC12(&tree, g_repo, &tree_id));
	FUNC2(FUNC6(index, tree));
	FUNC11(tree);

	FUNC0(index->tree);
	FUNC1(2, index->tree->children_count);

	/* override with a slightly different id, also dummy */
	entry.path = "subdir/some-file";
	FUNC8(&entry.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
	FUNC2(FUNC3(index, &entry));

	FUNC1(-1, index->tree->entry_count);

	cache = FUNC10(index->tree, "subdir");
	FUNC0(cache);
	FUNC1(-1, cache->entry_count);

	cache = FUNC10(index->tree, "subdir/even-deeper");
	FUNC0(cache);
	FUNC1(1, cache->entry_count);

	cache = FUNC10(index->tree, "subdir2");
	FUNC0(cache);
	FUNC1(1, cache->entry_count);

	FUNC5(index);
}