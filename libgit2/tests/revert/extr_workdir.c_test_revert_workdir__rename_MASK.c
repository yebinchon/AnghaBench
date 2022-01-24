#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct merge_name_entry {char* member_0; char* member_1; char* member_2; } ;
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
struct TYPE_5__ {int rename_threshold; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_1__ merge_opts; } ;
typedef  TYPE_2__ git_revert_options ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MERGE_FIND_RENAMES ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 TYPE_2__ GIT_REVERT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct merge_name_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC9(void)
{
	git_commit *head, *commit;
	git_oid head_oid, revert_oid;
	git_revert_options opts = GIT_REVERT_OPTIONS_INIT;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "55acf326a69f0aab7a974ec53ffa55a50bcac14e", 1, "file4.txt" },
		{ 0100644, "55acf326a69f0aab7a974ec53ffa55a50bcac14e", 2, "file5.txt" },
	};

	struct merge_name_entry merge_name_entries[] = {
		{ "file4.txt", "file5.txt", "" },
	};

	opts.merge_opts.flags |= GIT_MERGE_FIND_RENAMES;
	opts.merge_opts.rename_threshold = 50;

	FUNC4(&head_oid, "55568c8de5322ff9a95d72747a239cdb64a19965");
	FUNC1(FUNC3(&head, repo, &head_oid));
	FUNC1(FUNC5(repo, (git_object *)head, GIT_RESET_HARD, NULL));

	FUNC4(&revert_oid, "0aa8c7e40d342fff78d60b29a4ba8e993ed79c51");
	FUNC1(FUNC3(&commit, repo, &revert_oid));
	FUNC1(FUNC6(repo, commit, &opts));

	FUNC0(FUNC7(repo_index, merge_index_entries, 2));
	FUNC0(FUNC8(repo_index, merge_name_entries, 1));

	FUNC2(commit);
	FUNC2(head);
}