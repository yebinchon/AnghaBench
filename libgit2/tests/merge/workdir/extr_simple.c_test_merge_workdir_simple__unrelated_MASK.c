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
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {scalar_t__ file_favor; } ;
typedef  TYPE_1__ git_merge_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ; 
 int /*<<< orphan*/  THEIRS_UNRELATED_PARENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC7(void)
{
	git_oid their_oids[1];
	git_annotated_commit *their_heads[1];
	git_merge_options merge_opts = GIT_MERGE_OPTIONS_INIT;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "233c0919c998ed110a4b6ff36f353aec8b713487", 0, "added-in-master.txt" },
		{ 0100644, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf", 0, "automergeable.txt" },
		{ 0100644, "ab6c44a2e84492ad4b41bb6bac87353e9d02ac8b", 0, "changed-in-branch.txt" },
		{ 0100644, "11deab00b2d3a6f5a3073988ac050c2d7b6655e2", 0, "changed-in-master.txt" },
		{ 0100644, "4e886e602529caa9ab11d71f86634bd1b6e0de10", 0, "conflicting.txt" },
		{ 0100644, "ef58fdd8086c243bdc81f99e379acacfd21d32d6", 0, "new-in-unrelated1.txt" },
		{ 0100644, "948ba6e701c1edab0c2d394fb7c5538334129793", 0, "new-in-unrelated2.txt" },
		{ 0100644, "dfe3f22baa1f6fce5447901c3086bae368de6bdd", 0, "removed-in-branch.txt" },
		{ 0100644, "c8f06f2e3bb2964174677e91f0abead0e43c9e5d", 0, "unchanged.txt" },
	};

	FUNC1(FUNC5(&their_oids[0], THEIRS_UNRELATED_PARENT));
	FUNC1(FUNC3(&their_heads[0], repo, &their_oids[0]));

	merge_opts.file_favor = 0;
	FUNC1(FUNC4(repo, (const git_annotated_commit **)their_heads, 1, &merge_opts, NULL));

	FUNC0(FUNC6(repo_index, merge_index_entries, 9));

	FUNC2(their_heads[0]);
}