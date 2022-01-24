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

/* Variables and functions */
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ; 
 int /*<<< orphan*/  cb_status__normal ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  entry_count4 ; 
 int /*<<< orphan*/  entry_paths4 ; 
 int /*<<< orphan*/  entry_statuses4 ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8(void)
{
	status_entry_counts counts;
	git_repository *repo = FUNC3("status");
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;

	/* first alter the contents of the worktree */
	FUNC2(FUNC7("status/current_file", "status/swap"));
	FUNC2(FUNC7("status/subdir", "status/current_file"));
	FUNC2(FUNC7("status/swap", "status/subdir"));
	FUNC1("status/.new_file", "dummy");
	FUNC2(FUNC4("status/zzz_new_dir", 0777));
	FUNC1("status/zzz_new_dir/new_file", "dummy");
	FUNC1("status/zzz_new_file", "dummy");

	/* now get status */
	FUNC6(&counts, 0x0, sizeof(status_entry_counts));
	counts.expected_entry_count = entry_count4;
	counts.expected_paths = entry_paths4;
	counts.expected_statuses = entry_statuses4;

	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;
	/* TODO: set pathspec to "current_file" eventually */

	FUNC2(
		FUNC5(repo, &opts, cb_status__normal, &counts)
	);

	FUNC0(counts.expected_entry_count, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);
}