#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_commit *head_commit, *revert_commit;
	git_oid head_oid, revert_oid;
	git_index *index;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "296a6d3be1dff05c5d1f631d2459389fa7b619eb", 0, "file-mainline.txt" },
	};

	FUNC5(&head_oid, "39467716290f6df775a91cdb9a4eb39295018145");
	FUNC1(FUNC3(&head_commit, repo, &head_oid));

	FUNC5(&revert_oid, "ebb03002cee5d66c7732dd06241119fe72ab96a5");
	FUNC1(FUNC3(&revert_commit, repo, &revert_oid));

	FUNC1(FUNC6(&index, repo, revert_commit, head_commit, 0, NULL));
	FUNC0(FUNC7(index, merge_index_entries, 1));

	FUNC2(revert_commit);
	FUNC2(head_commit);
	FUNC4(index);
}