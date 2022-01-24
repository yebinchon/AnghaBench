#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  oid_calculations; int /*<<< orphan*/  stat_calls; } ;
typedef  TYPE_1__ git_diff_perfdata ;
struct TYPE_12__ {int context_lines; int interhunk_lines; int flags; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_13__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_IGNORED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 TYPE_1__ GIT_DIFF_PERFDATA_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC10(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;
	int use_iterator;

	g_repo = FUNC3("status");

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	FUNC2(FUNC8(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC9(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC2(FUNC4(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC2(FUNC5(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		/* to generate these values:
		 * - cd to tests/resources/status,
		 * - mv .gitted .git
		 * - git diff --name-status
		 * - git diff
		 * - mv .git .gitted
		 */
		FUNC0(13, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(4, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(4, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(4, exp.file_status[GIT_DELTA_UNTRACKED]);

		FUNC0(8, exp.hunks);

		FUNC0(14, exp.lines);
		FUNC0(5, exp.line_ctxt);
		FUNC0(4, exp.line_adds);
		FUNC0(5, exp.line_dels);
	}

	{
		git_diff_perfdata perf = GIT_DIFF_PERFDATA_INIT;
		FUNC2(FUNC7(&perf, diff));
		FUNC1(
			13 /* in root */ + 3 /* in subdir */, perf.stat_calls);
		FUNC1(5, perf.oid_calculations);
	}

	FUNC6(diff);
}