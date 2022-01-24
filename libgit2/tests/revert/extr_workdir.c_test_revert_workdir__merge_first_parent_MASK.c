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
struct TYPE_4__ {int mainline; } ;
typedef  TYPE_1__ git_revert_options ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 TYPE_1__ GIT_REVERT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC8(void)
{
	git_commit *head;
	git_oid head_oid;
	git_revert_options opts = GIT_REVERT_OPTIONS_INIT;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "296a6d3be1dff05c5d1f631d2459389fa7b619eb", 0, "file-mainline.txt" },
		{ 0100644, "0cdb66192ee192f70f891f05a47636057420e871", 0, "file1.txt" },
		{ 0100644, "73ec36fa120f8066963a0bc9105bb273dbd903d7", 0, "file2.txt" },
	};

	opts.mainline = 1;

	FUNC4(&head_oid, "5acdc74af27172ec491d213ee36cea7eb9ef2579");
	FUNC1(FUNC3(&head, repo, &head_oid));
	FUNC1(FUNC5(repo, (git_object *)head, GIT_RESET_HARD, NULL));

	FUNC1(FUNC6(repo, head, &opts));

	FUNC0(FUNC7(repo_index, merge_index_entries, 3));

	FUNC2(head);
}