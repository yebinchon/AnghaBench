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
struct status_entry {char* member_1; char* member_2; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_RENAMES_FROM_REWRITES ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ; 
 int /*<<< orphan*/  GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct status_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC7(void)
{
	git_index *index;
	git_status_list *statuslist;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	struct status_entry expected[] = {
		{ GIT_STATUS_WT_MODIFIED, "ikeepsix.txt", "ikeepsix.txt" },
	};

	opts.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED;
	opts.flags |= GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX;
	opts.flags |= GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR;
	opts.flags |= GIT_STATUS_OPT_RENAMES_FROM_REWRITES;

	FUNC1(FUNC4(&index, g_repo));

	FUNC2("renames/ikeepsix.txt",
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n" \
		"This is enough content for the file to be rewritten.\n");

	FUNC1(FUNC6(&statuslist, g_repo, &opts));
	FUNC0(statuslist, expected, 1);
	FUNC5(statuslist);

	FUNC3(index);
}