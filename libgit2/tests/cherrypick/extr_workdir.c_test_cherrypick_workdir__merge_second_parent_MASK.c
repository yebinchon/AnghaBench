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
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int mainline; } ;
typedef  TYPE_1__ git_cherrypick_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHERRYPICK_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
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
		{ 0100644, "487434cace79238a7091e2220611d4f20a765690", 0, "file1.txt" },
		{ 0100644, "e5183bfd18e3a0a691fadde2f0d5610b73282d31", 0, "file2.txt" },
		{ 0100644, "409a1bec58bf35348e8b62b72bb9c1f45cf5a587", 0, "file3.txt" },
	};

	opts.mainline = 2;

	FUNC5(&head_oid, "cfc4f0999a8367568e049af4f72e452d40828a15");
	FUNC1(FUNC4(&head, repo, &head_oid));
	FUNC1(FUNC6(repo, (git_object *)head, GIT_RESET_HARD, NULL));

	FUNC5(&cherry_oid, "abe4603bc7cd5b8167a267e0e2418fd2348f8cff");
	FUNC1(FUNC4(&commit, repo, &cherry_oid));

	FUNC1(FUNC2(repo, commit, &opts));

	FUNC0(FUNC7(repo_index, merge_index_entries, 3));

	FUNC3(commit);
	FUNC3(head);
}