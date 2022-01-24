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
struct merge_reuc_entry {char* member_0; int member_1; int member_2; int member_3; char* member_4; char* member_5; char* member_6; } ;
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_merge_options ;
struct TYPE_3__ {scalar_t__ file_size; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOMERGEABLE_MERGED_FILE ; 
 int /*<<< orphan*/  GIT_MERGE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct merge_index_entry*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct merge_reuc_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(void)
{
	git_index *index;
	const git_index_entry *entry;
	git_merge_options opts = GIT_MERGE_OPTIONS_INIT;
	git_blob *blob;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "233c0919c998ed110a4b6ff36f353aec8b713487", 0,  "added-in-master.txt" },
		{ 0100644, "f2e1550a0c9e53d5811175864a29536642ae3821", 0,  "automergeable.txt" },
		{ 0100644, "4eb04c9e79e88f6640d01ff5b25ca2a60764f216", 0,  "changed-in-branch.txt" },
		{ 0100644, "11deab00b2d3a6f5a3073988ac050c2d7b6655e2", 0,  "changed-in-master.txt" },

		{ 0100644, "d427e0b2e138501a3d15cc376077a3631e15bd46", 1, "conflicting.txt" },
		{ 0100644, "4e886e602529caa9ab11d71f86634bd1b6e0de10", 2, "conflicting.txt" },
		{ 0100644, "2bd0a343aeef7a2cf0d158478966a6e587ff3863", 3, "conflicting.txt" },

		{ 0100644, "c8f06f2e3bb2964174677e91f0abead0e43c9e5d", 0,  "unchanged.txt" },
	};

	struct merge_reuc_entry merge_reuc_entries[] = {
		{ "automergeable.txt", 0100644, 0100644, 0100644, \
			"6212c31dab5e482247d7977e4f0dd3601decf13b", \
			"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf", \
			"058541fc37114bfc1dddf6bd6bffc7fae5c2e6fe" },
		{ "removed-in-branch.txt", 0100644, 0100644, 0, \
			"dfe3f22baa1f6fce5447901c3086bae368de6bdd", \
			"dfe3f22baa1f6fce5447901c3086bae368de6bdd", \
			"" },
		{ "removed-in-master.txt", 0100644, 0, 0100644, \
			"5c3b68a71fc4fa5d362fd3875e53137c6a5ab7a5", \
			"", \
			"5c3b68a71fc4fa5d362fd3875e53137c6a5ab7a5" },
	};

	FUNC1(FUNC8(&index, repo, "master", "branch", &opts));

	FUNC0(FUNC9(index, merge_index_entries, 8));
	FUNC0(FUNC10(index, merge_reuc_entries, 3));

	FUNC0((entry = FUNC5(index, "automergeable.txt", 0)) != NULL);
	FUNC0(entry->file_size == FUNC11(AUTOMERGEABLE_MERGED_FILE));

	FUNC1(FUNC6((git_object **)&blob, repo, &entry->id, GIT_OBJECT_BLOB));
	FUNC0(FUNC7(FUNC3(blob), AUTOMERGEABLE_MERGED_FILE, (size_t)entry->file_size) == 0);

	FUNC4(index);
	FUNC2(blob);
}