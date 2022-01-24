#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct merge_reuc_entry {int dummy; } ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
struct TYPE_4__ {int /*<<< orphan*/  file_favor; } ;
typedef  TYPE_1__ git_merge_options ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 struct merge_index_entry ADDED_IN_MASTER_INDEX_ENTRY ; 
 struct merge_index_entry AUTOMERGEABLE_INDEX_ENTRY ; 
 struct merge_reuc_entry AUTOMERGEABLE_REUC_ENTRY ; 
 struct merge_index_entry CHANGED_IN_BRANCH_INDEX_ENTRY ; 
 struct merge_index_entry CHANGED_IN_MASTER_INDEX_ENTRY ; 
 struct merge_reuc_entry CONFLICTING_REUC_ENTRY ; 
 int /*<<< orphan*/  GIT_MERGE_FILE_FAVOR_THEIRS ; 
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ; 
 struct merge_reuc_entry REMOVED_IN_BRANCH_REUC_ENTRY ; 
 struct merge_reuc_entry REMOVED_IN_MASTER_REUC_ENTRY ; 
 int /*<<< orphan*/  THEIRS_AUTOMERGE_BRANCH ; 
 struct merge_index_entry UNCHANGED_INDEX_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct merge_reuc_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC6(void)
{
	git_index *index;
	git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

	struct merge_index_entry merge_index_entries[] = {
		ADDED_IN_MASTER_INDEX_ENTRY,
		AUTOMERGEABLE_INDEX_ENTRY,
		CHANGED_IN_BRANCH_INDEX_ENTRY,
		CHANGED_IN_MASTER_INDEX_ENTRY,
		{ 0100644, "2bd0a343aeef7a2cf0d158478966a6e587ff3863", 0, "conflicting.txt" },
		UNCHANGED_INDEX_ENTRY,
	};

	struct merge_reuc_entry merge_reuc_entries[] = {
		AUTOMERGEABLE_REUC_ENTRY,
		CONFLICTING_REUC_ENTRY,
		REMOVED_IN_BRANCH_REUC_ENTRY,
		REMOVED_IN_MASTER_REUC_ENTRY,
	};

	opts.file_favor = GIT_MERGE_FILE_FAVOR_THEIRS;

	FUNC1(FUNC5(&index, repo, "master", THEIRS_AUTOMERGE_BRANCH, &opts));

	FUNC0(FUNC3(index, merge_index_entries, 6));
	FUNC0(FUNC4(index, merge_reuc_entries, 4));

	FUNC2(index);
}