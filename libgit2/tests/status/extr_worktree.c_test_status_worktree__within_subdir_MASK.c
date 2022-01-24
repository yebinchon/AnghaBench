#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int debug; int /*<<< orphan*/  wrong_sorted_path; int /*<<< orphan*/  wrong_status_flags_count; int /*<<< orphan*/  entry_count; int /*<<< orphan*/  expected_statuses; int /*<<< orphan*/  expected_paths; int /*<<< orphan*/  expected_entry_count; } ;
typedef  TYPE_1__ status_entry_counts ;
struct TYPE_9__ {int count; char** strings; } ;
typedef  TYPE_2__ git_strarray ;
struct TYPE_10__ {int flags; TYPE_2__ pathspec; } ;
typedef  TYPE_3__ git_status_options ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 TYPE_3__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH ; 
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(void)
{
	status_entry_counts counts;
	git_repository *repo = FUNC3("status");
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	char *paths[] = { "zzz_new_dir" };
	git_strarray pathsArray;

	/* first alter the contents of the worktree */
	FUNC1("status/.new_file", "dummy");
	FUNC2(FUNC4("status/zzz_new_dir", 0777));
	FUNC1("status/zzz_new_dir/new_file", "dummy");
	FUNC1("status/zzz_new_file", "dummy");
	FUNC1("status/wut", "dummy");

	FUNC7(repo, "zzz_new_dir/new_file");

	/* now get status */
	FUNC6(&counts, 0x0, sizeof(status_entry_counts));
	counts.expected_entry_count = entry_count4;
	counts.expected_paths = entry_paths4;
	counts.expected_statuses = entry_statuses4;
	counts.debug = true;

	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
		GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS |
		GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH;

	pathsArray.count = 1;
	pathsArray.strings = paths;
	opts.pathspec = pathsArray;

	/* We committed zzz_new_dir/new_file above. It shouldn't be reported. */
	FUNC2(
		FUNC5(repo, &opts, cb_status__normal, &counts)
	);

	FUNC0(0, counts.entry_count);
	FUNC0(0, counts.wrong_status_flags_count);
	FUNC0(0, counts.wrong_sorted_path);
}