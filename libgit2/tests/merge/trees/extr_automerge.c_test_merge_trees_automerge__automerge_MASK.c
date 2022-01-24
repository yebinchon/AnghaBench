#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct merge_reuc_entry {int dummy; } ;
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_merge_options ;
struct TYPE_3__ {scalar_t__ file_size; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 struct merge_index_entry ADDED_IN_MASTER_INDEX_ENTRY ; 
 struct merge_index_entry AUTOMERGEABLE_INDEX_ENTRY ; 
 int /*<<< orphan*/  AUTOMERGEABLE_MERGED_FILE ; 
 struct merge_reuc_entry AUTOMERGEABLE_REUC_ENTRY ; 
 struct merge_index_entry CHANGED_IN_BRANCH_INDEX_ENTRY ; 
 struct merge_index_entry CHANGED_IN_MASTER_INDEX_ENTRY ; 
 int /*<<< orphan*/  GIT_MERGE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 struct merge_reuc_entry REMOVED_IN_BRANCH_REUC_ENTRY ; 
 struct merge_reuc_entry REMOVED_IN_MASTER_REUC_ENTRY ; 
 int /*<<< orphan*/  THEIRS_AUTOMERGE_BRANCH ; 
 struct merge_index_entry UNCHANGED_INDEX_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct merge_index_entry*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct merge_reuc_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(void)
{
	git_index *index;
	const git_index_entry *entry;
	git_merge_options opts = GIT_MERGE_OPTIONS_INIT;
	git_blob *blob;

	struct merge_index_entry merge_index_entries[] = {
		ADDED_IN_MASTER_INDEX_ENTRY,
		AUTOMERGEABLE_INDEX_ENTRY,
		CHANGED_IN_BRANCH_INDEX_ENTRY,
		CHANGED_IN_MASTER_INDEX_ENTRY,

		{ 0100644, "d427e0b2e138501a3d15cc376077a3631e15bd46", 1, "conflicting.txt" },
		{ 0100644, "4e886e602529caa9ab11d71f86634bd1b6e0de10", 2, "conflicting.txt" },
		{ 0100644, "2bd0a343aeef7a2cf0d158478966a6e587ff3863", 3, "conflicting.txt" },

		UNCHANGED_INDEX_ENTRY,
	};

	struct merge_reuc_entry merge_reuc_entries[] = {
		AUTOMERGEABLE_REUC_ENTRY,
		REMOVED_IN_BRANCH_REUC_ENTRY,
		REMOVED_IN_MASTER_REUC_ENTRY
	};

	FUNC1(FUNC10(&index, repo, "master", THEIRS_AUTOMERGE_BRANCH, &opts));

	FUNC0(FUNC8(index, merge_index_entries, 8));
	FUNC0(FUNC9(index, merge_reuc_entries, 3));

	FUNC0((entry = FUNC5(index, "automergeable.txt", 0)) != NULL);
	FUNC0(entry->file_size == FUNC11(AUTOMERGEABLE_MERGED_FILE));

	FUNC1(FUNC6((git_object **)&blob, repo, &entry->id, GIT_OBJECT_BLOB));
	FUNC0(FUNC7(FUNC3(blob), AUTOMERGEABLE_MERGED_FILE, (size_t)entry->file_size) == 0);

	FUNC4(index);
	FUNC2(blob);
}