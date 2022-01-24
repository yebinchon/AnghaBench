#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_10__ {TYPE_1__ pathspec; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_11__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC10(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;
	char *pathspec = "current_file";
	int use_iterator;

	g_repo = FUNC4("status");

	opts.pathspec.strings = &pathspec;
	opts.pathspec.count   = 1;

	FUNC2(FUNC8(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC9(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC2(FUNC5(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC2(FUNC6(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(0, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(0, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(0, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(0, exp.hunks);
		FUNC0(0, exp.lines);
		FUNC0(0, exp.line_ctxt);
		FUNC0(0, exp.line_adds);
		FUNC0(0, exp.line_dels);
	}

	FUNC7(diff);

	FUNC1("status/current_file", "\n");

	FUNC2(FUNC8(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC9(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC2(FUNC5(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC2(FUNC6(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(1, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(0, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(1, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.hunks);
		FUNC0(2, exp.lines);
		FUNC0(1, exp.line_ctxt);
		FUNC0(1, exp.line_adds);
		FUNC0(0, exp.line_dels);
	}

	FUNC7(diff);

	FUNC3("status/current_file", "current_file");

	FUNC2(FUNC8(&diff, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC9(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC2(FUNC5(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC2(FUNC6(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(1, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(0, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(1, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.hunks);
		FUNC0(3, exp.lines);
		FUNC0(0, exp.line_ctxt);
		FUNC0(1, exp.line_adds);
		FUNC0(2, exp.line_dels);
	}

	FUNC7(diff);
}