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
struct TYPE_4__ {int /*<<< orphan*/  file_flags; } ;
typedef  TYPE_1__ git_merge_options ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  BRANCH_A_CHANGE ; 
 int /*<<< orphan*/  BRANCH_B_CHANGE ; 
 int /*<<< orphan*/  GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE ; 
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC5(void)
{
	git_index *index;
	git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

	struct merge_index_entry merge_index_entries[] = {
		{ 0100644, "a827eab4fd66ab37a6ebcfaa7b7e341abfd55947", 0, "test.txt" },
	};

	opts.file_flags |= GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE;

	FUNC1(FUNC4(&index, repo, BRANCH_A_CHANGE, BRANCH_B_CHANGE, &opts));

	FUNC0(FUNC3(index, merge_index_entries, 1));

	FUNC2(index);
}