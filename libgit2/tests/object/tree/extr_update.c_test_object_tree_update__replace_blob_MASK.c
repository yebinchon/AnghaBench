#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {TYPE_3__ member_0; } ;
struct TYPE_11__ {char const* member_3; int /*<<< orphan*/  id; int /*<<< orphan*/  member_2; TYPE_2__ member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ git_tree_update ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {char const* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_5__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_TREE_UPDATE_UPSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	git_oid tree_index_id, tree_updater_id, base_id;
	git_tree *base_tree;
	git_index *idx;
	const char *path = "README";
	git_index_entry entry = { 0 };

	git_tree_update updates[] = {
		{ GIT_TREE_UPDATE_UPSERT, {{0}}, GIT_FILEMODE_BLOB, path},
	};

	FUNC1(FUNC7(&base_id, "c4dc1555e4d4fa0e0c9c3fc46734c7c35b3ce90b"));
	FUNC1(FUNC10(&base_tree, g_repo, &base_id));

	/* Create it with an index */
	FUNC1(FUNC4(&idx));
	FUNC1(FUNC5(idx, base_tree));

	entry.path = path;
	FUNC1(FUNC7(&entry.id, "fa49b077972391ad58037050f2a75f74e3671e92"));
	entry.mode = GIT_FILEMODE_BLOB;
	FUNC1(FUNC2(idx, &entry));

	FUNC1(FUNC6(&tree_index_id, idx, g_repo));
	FUNC3(idx);

	/* Perform the same operation via the tree updater */
	FUNC1(FUNC7(&updates[0].id, "fa49b077972391ad58037050f2a75f74e3671e92"));
	FUNC1(FUNC8(&tree_updater_id, g_repo, base_tree, 1, updates));

	FUNC0(&tree_index_id, &tree_updater_id);

	FUNC9(base_tree);
}