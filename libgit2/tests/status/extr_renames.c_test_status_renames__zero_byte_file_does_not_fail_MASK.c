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
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;

/* Variables and functions */
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_INCLUDE_IGNORED ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RECURSE_IGNORED_DIRS ; 
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ; 
 int GIT_STATUS_OPT_RENAMES_FROM_REWRITES ; 
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ; 
 int GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ; 
 int GIT_STATUS_SHOW_INDEX_AND_WORKDIR ; 
 int /*<<< orphan*/  GIT_STATUS_WT_DELETED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct status_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void)
{
	git_status_list *statuslist;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;

	struct status_entry expected[] = {
		{ GIT_STATUS_WT_DELETED, "ikeepsix.txt", "ikeepsix.txt" },
		{ GIT_STATUS_WT_NEW, "zerobyte.txt", "zerobyte.txt" },
	};

	opts.flags |= GIT_STATUS_OPT_RENAMES_FROM_REWRITES |
		GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX |
		GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR |
		GIT_STATUS_OPT_INCLUDE_IGNORED |
		GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS |
		GIT_STATUS_SHOW_INDEX_AND_WORKDIR |
		GIT_STATUS_OPT_RECURSE_IGNORED_DIRS;

	FUNC5("renames/ikeepsix.txt");
	FUNC1("renames/zerobyte.txt", "");

	FUNC2(FUNC4(&statuslist, g_repo, &opts));
	FUNC0(statuslist, expected, 2);
	FUNC3(statuslist);
}