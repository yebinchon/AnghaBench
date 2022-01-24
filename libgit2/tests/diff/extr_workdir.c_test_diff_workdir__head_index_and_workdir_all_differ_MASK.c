#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_10__ {char** strings; int count; } ;
struct TYPE_11__ {TYPE_1__ pathspec; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_12__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*) ; 

void FUNC12(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff_i2t = NULL, *diff_w2i = NULL;
	diff_expects exp;
	char *pathspec = "staged_changes_modified_file";
	git_tree *tree;
	int use_iterator;

	/* For this file,
	 * - head->index diff has 1 line of context, 1 line of diff
	 * - index->workdir diff has 2 lines of context, 1 line of diff
	 * but
	 * - head->workdir diff has 1 line of context, 2 lines of diff
	 * Let's make sure the right one is returned from each fn.
	 */

	g_repo = FUNC2("status");

	tree = FUNC11(g_repo, "26a125ee1bfc5df1e1b2e9441bbe63c8a7ae989f");

	opts.pathspec.strings = &pathspec;
	opts.pathspec.count   = 1;

	FUNC1(FUNC8(&diff_i2t, g_repo, tree, NULL, &opts));
	FUNC1(FUNC6(&diff_w2i, g_repo, NULL, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC10(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC1(FUNC4(
				diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

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

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC10(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff_w2i, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC1(FUNC4(
				diff_w2i, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(1, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(0, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(1, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.hunks);
		FUNC0(3, exp.lines);
		FUNC0(2, exp.line_ctxt);
		FUNC0(1, exp.line_adds);
		FUNC0(0, exp.line_dels);
	}

	FUNC1(FUNC7(diff_i2t, diff_w2i));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC10(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC1(FUNC4(
				diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(1, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(0, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(1, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.hunks);
		FUNC0(3, exp.lines);
		FUNC0(1, exp.line_ctxt);
		FUNC0(2, exp.line_adds);
		FUNC0(0, exp.line_dels);
	}

	FUNC5(diff_i2t);
	FUNC5(diff_w2i);

	FUNC9(tree);
}