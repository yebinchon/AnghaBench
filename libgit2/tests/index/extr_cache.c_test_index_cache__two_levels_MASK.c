#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  entry_count; int /*<<< orphan*/  children_count; } ;
typedef  TYPE_1__ git_tree_cache ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_18__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ git_index_entry ;
struct TYPE_19__ {TYPE_1__ const* tree; } ;
typedef  TYPE_3__ git_index ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 TYPE_1__ const* FUNC12 (TYPE_1__ const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,int) ; 

void FUNC16(void)
{
	git_tree *tree;
	git_oid tree_id;
	git_index *index;
	git_index_entry entry;
	const git_tree_cache *tree_cache;

	FUNC2(FUNC11(&index, g_repo));
	FUNC2(FUNC4(index));

	FUNC15(&entry, 0x0, sizeof(entry));
	entry.mode = GIT_FILEMODE_BLOB;
	FUNC2(FUNC10(&entry.id, "a8233120f6ad708f843d861ce2b7228ec4e3dec6"));
	entry.path = "top-level.txt";
	FUNC2(FUNC3(index, &entry));

	entry.path = "subdir/file.txt";
	FUNC2(FUNC3(index, &entry));

	/* the read-tree fills the tree cache */
	FUNC2(FUNC9(&tree_id, index));
	FUNC2(FUNC14(&tree, g_repo, &tree_id));
	FUNC2(FUNC7(index, tree));
	FUNC13(tree);
	FUNC2(FUNC8(index));

	/* we now must have cache entries for "" and "subdir" */
	FUNC0(index->tree);
	FUNC0(FUNC12(index->tree, "subdir"));

	FUNC2(FUNC6(index, true));
	/* we must still have cache entries for "" and "subdir", since we wrote it out */
	FUNC0(index->tree);
	FUNC0(FUNC12(index->tree, "subdir"));

	entry.path = "top-level.txt";
	FUNC2(FUNC10(&entry.id, "3697d64be941a53d4ae8f6a271e4e3fa56b022cc"));
	FUNC2(FUNC3(index, &entry));

	/* writ out the index after we invalidate the root */
	FUNC2(FUNC8(index));
	FUNC2(FUNC6(index, true));

	/* the cache for the subtree must still be valid, even if the root isn't */
	FUNC0(index->tree);
	FUNC1(-1, index->tree->entry_count);
	FUNC1(1, index->tree->children_count);
	tree_cache = FUNC12(index->tree, "subdir");
	FUNC0(tree_cache);
	FUNC1(1, tree_cache->entry_count);

	FUNC5(index);
}