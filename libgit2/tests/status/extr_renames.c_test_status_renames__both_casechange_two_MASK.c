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
struct status_entry {int member_0; char* member_1; char* member_2; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 int GIT_STATUS_INDEX_MODIFIED ; 
 int GIT_STATUS_INDEX_RENAMED ; 
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ; 
 int GIT_STATUS_WT_MODIFIED ; 
 int GIT_STATUS_WT_RENAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct status_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC12(void)
{
	git_index *index;
	git_status_list *statuslist;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	int index_caps;
	struct status_entry expected_icase[] = {
		{ GIT_STATUS_INDEX_RENAMED | GIT_STATUS_INDEX_MODIFIED |
		  GIT_STATUS_WT_MODIFIED,
		  "ikeepsix.txt", "IKeepSix.txt" },
		{ GIT_STATUS_INDEX_MODIFIED,
		  "sixserving.txt", "sixserving.txt" },
		{ GIT_STATUS_INDEX_RENAMED | GIT_STATUS_WT_MODIFIED,
		  "songof7cities.txt", "songof7.txt" },
		{ GIT_STATUS_INDEX_RENAMED | GIT_STATUS_WT_RENAMED,
		  "untimely.txt", "untimeliest.txt" }
	};
	struct status_entry expected_case[] = {
		{ GIT_STATUS_INDEX_RENAMED |
		  GIT_STATUS_WT_MODIFIED | GIT_STATUS_WT_RENAMED,
		  "songof7cities.txt", "SONGOF7.txt" },
		{ GIT_STATUS_INDEX_MODIFIED | GIT_STATUS_WT_RENAMED,
		  "sixserving.txt", "SixServing.txt" },
		{ GIT_STATUS_INDEX_RENAMED | GIT_STATUS_INDEX_MODIFIED |
		  GIT_STATUS_WT_RENAMED | GIT_STATUS_WT_MODIFIED,
		  "ikeepsix.txt", "ikeepsix.txt" },
		{ GIT_STATUS_INDEX_RENAMED | GIT_STATUS_WT_RENAMED,
		  "untimely.txt", "untimeliest.txt" }
	};

	opts.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED;
	opts.flags |= GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX;
	opts.flags |= GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR;

	FUNC1(FUNC7(&index, g_repo));
	index_caps = FUNC3(index);

	FUNC10(g_repo, "ikeepsix.txt", "IKeepSix.txt");
	FUNC10(g_repo, "sixserving.txt", "sixserving.txt");
	FUNC11(g_repo, "songof7cities.txt", "songof7.txt");
	FUNC11(g_repo, "untimely.txt", "untimelier.txt");

	FUNC1(FUNC5(index, "ikeepsix.txt"));
	FUNC1(FUNC5(index, "sixserving.txt"));
	FUNC1(FUNC5(index, "songof7cities.txt"));
	FUNC1(FUNC5(index, "untimely.txt"));
	FUNC1(FUNC2(index, "IKeepSix.txt"));
	FUNC1(FUNC2(index, "sixserving.txt"));
	FUNC1(FUNC2(index, "songof7.txt"));
	FUNC1(FUNC2(index, "untimelier.txt"));
	FUNC1(FUNC6(index));

	FUNC10(g_repo, "IKeepSix.txt", "ikeepsix.txt");
	FUNC11(g_repo, "sixserving.txt", "SixServing.txt");
	FUNC10(g_repo, "songof7.txt", "SONGOF7.txt");
	FUNC11(g_repo, "untimelier.txt", "untimeliest.txt");

	FUNC1(FUNC9(&statuslist, g_repo, &opts));

	FUNC0(statuslist, (index_caps & GIT_INDEX_CAPABILITY_IGNORE_CASE) ?
		expected_icase : expected_case, 4);

	FUNC8(statuslist);

	FUNC4(index);
}