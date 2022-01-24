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
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_5__ {int rename_threshold; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_1__ merge_opts; } ;
typedef  TYPE_2__ git_cherrypick_options ;

/* Variables and functions */
 TYPE_2__ GIT_CHERRYPICK_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_MERGE_FIND_RENAMES ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC8(void)
{
	git_commit *head, *commit;
	git_oid head_oid, cherry_oid;
	git_cherrypick_options opts = GIT_CHERRYPICK_OPTIONS_INIT;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "19c5c7207054604b69c84d08a7571ef9672bb5c2", 0, "file1.txt" },
		{ 0100644, "a58ca3fee5eb68b11adc2703e5843f968c9dad1e", 0, "file2.txt" },
		{ 0100644, "28d9eb4208074ad1cc84e71ccc908b34573f05d2", 0, "file3.txt.renamed" },
	};

	opts.merge_opts.flags |= GIT_MERGE_FIND_RENAMES;
	opts.merge_opts.rename_threshold = 50;

	FUNC5(&head_oid, "cfc4f0999a8367568e049af4f72e452d40828a15");
	FUNC1(FUNC4(&head, repo, &head_oid));
	FUNC1(FUNC6(repo, (git_object *)head, GIT_RESET_HARD, NULL));

	FUNC5(&cherry_oid, "2a26c7e88b285613b302ba76712bc998863f3cbc");
	FUNC1(FUNC4(&commit, repo, &cherry_oid));
	FUNC1(FUNC2(repo, commit, &opts));

	FUNC0(FUNC7(repo_index, merge_index_entries, 3));

	FUNC3(commit);
	FUNC3(head);
}