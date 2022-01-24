#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  wrong_sorted_path; int /*<<< orphan*/  wrong_status_flags_count; int /*<<< orphan*/  entry_count; int /*<<< orphan*/  expected_entry_count; int /*<<< orphan*/  expected_statuses; int /*<<< orphan*/  expected_paths; } ;
typedef  TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ git_status_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_INCLUDE_IGNORED ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  cb_status__normal ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  entry_count3 ; 
 int /*<<< orphan*/  entry_paths3 ; 
 int /*<<< orphan*/  entry_paths3_icase ; 
 int /*<<< orphan*/  entry_statuses3 ; 
 int /*<<< orphan*/  entry_statuses3_icase ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

void FUNC10(void)
{
	status_entry_counts counts;
	git_repository *repo = FUNC3("status");
	git_index *index;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	bool ignore_case;

	FUNC2(FUNC6(&index, repo));
	ignore_case = (FUNC4(index) & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0;
	FUNC5(index);

	/* first alter the contents of the worktree */
	FUNC2(FUNC9("status/current_file", "status/swap"));
	FUNC2(FUNC9("status/subdir", "status/current_file"));
	FUNC2(FUNC9("status/swap", "status/subdir"));

	FUNC1("status/.HEADER", "dummy");
	FUNC1("status/42-is-not-prime.sigh", "dummy");
	FUNC1("status/README.md", "dummy");

	/* now get status */
	FUNC8(&counts, 0x0, sizeof(status_entry_counts));
	counts.expected_entry_count = entry_count3;
	counts.expected_paths = ignore_case ? entry_paths3_icase : entry_paths3;
	counts.expected_statuses = ignore_case ? entry_statuses3_icase : entry_statuses3;

	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_INCLUDE_IGNORED;

	FUNC2(
		FUNC7(repo, &opts, cb_status__normal, &counts)
	);

	FUNC0(counts.expected_entry_count, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);
}