#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_10__ {int context_lines; int interhunk_lines; int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_11__ {int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_IGNORED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_UNTRACKED ; 
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char const*) ; 

void FUNC13(void)
{
	/* grabbed a couple of commit oids from the history of the attr repo */
	const char *a_commit = "26a125ee1bf"; /* the current HEAD */
	const char *b_commit = "0017bd4ab1ec3"; /* the start */
	git_tree *a, *b;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_diff *diff2 = NULL;
	diff_expects exp;
	int use_iterator;

	g_repo = FUNC2("status");

	a = FUNC12(g_repo, a_commit);
	b = FUNC12(g_repo, b_commit);

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	/* You can't really generate the equivalent of git_diff_tree_to_workdir()
	 * using C git.  It really wants to interpose the index into the diff.
	 *
	 * To validate the following results with command line git, I ran the
	 * following:
	 * - git ls-tree 26a125
	 * - find . ! -path ./.git/\* -a -type f | git hash-object --stdin-paths
	 * The results are documented at the bottom of this file in the
	 * long comment entitled "PREPARATION OF TEST DATA".
	 */
	FUNC1(FUNC9(&diff, g_repo, a, &opts));

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC11(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC1(FUNC4(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(14, exp.files);
		FUNC0(0, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(4, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(4, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(5, exp.file_status[GIT_DELTA_UNTRACKED]);
	}

	/* Since there is no git diff equivalent, let's just assume that the
	 * text diffs produced by git_diff_foreach are accurate here.  We will
	 * do more apples-to-apples test comparison below.
	 */

	FUNC5(diff);
	diff = NULL;
	FUNC11(&exp, 0, sizeof(exp));

	/* This is a compatible emulation of "git diff <sha>" which looks like
	 * a workdir to tree diff (even though it is not really).  This is what
	 * you would get from "git diff --name-status 26a125ee1bf"
	 */
	FUNC1(FUNC8(&diff, g_repo, a, NULL, &opts));
	FUNC1(FUNC6(&diff2, g_repo, NULL, &opts));
	FUNC1(FUNC7(diff, diff2));
	FUNC5(diff2);

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC11(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC1(FUNC4(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(15, exp.files);
		FUNC0(2, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(5, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(4, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(3, exp.file_status[GIT_DELTA_UNTRACKED]);

		FUNC0(11, exp.hunks);

		FUNC0(17, exp.lines);
		FUNC0(4, exp.line_ctxt);
		FUNC0(8, exp.line_adds);
		FUNC0(5, exp.line_dels);
	}

	FUNC5(diff);
	diff = NULL;
	FUNC11(&exp, 0, sizeof(exp));

	/* Again, emulating "git diff <sha>" for testing purposes using
	 * "git diff --name-status 0017bd4ab1ec3" instead.
	 */
	FUNC1(FUNC8(&diff, g_repo, b, NULL, &opts));
	FUNC1(FUNC6(&diff2, g_repo, NULL, &opts));
	FUNC1(FUNC7(diff, diff2));
	FUNC5(diff2);

	for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
		FUNC11(&exp, 0, sizeof(exp));

		if (use_iterator)
			FUNC1(FUNC3(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
		else
			FUNC1(FUNC4(
				diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

		FUNC0(16, exp.files);
		FUNC0(5, exp.file_status[GIT_DELTA_ADDED]);
		FUNC0(4, exp.file_status[GIT_DELTA_DELETED]);
		FUNC0(3, exp.file_status[GIT_DELTA_MODIFIED]);
		FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
		FUNC0(3, exp.file_status[GIT_DELTA_UNTRACKED]);

		FUNC0(12, exp.hunks);

		FUNC0(19, exp.lines);
		FUNC0(3, exp.line_ctxt);
		FUNC0(12, exp.line_adds);
		FUNC0(4, exp.line_dels);
	}

	FUNC5(diff);

	/* Let's try that once more with a reversed diff */

	opts.flags |= GIT_DIFF_REVERSE;

	FUNC1(FUNC8(&diff, g_repo, b, NULL, &opts));
	FUNC1(FUNC6(&diff2, g_repo, NULL, &opts));
	FUNC1(FUNC7(diff, diff2));
	FUNC5(diff2);

	FUNC11(&exp, 0, sizeof(exp));

	FUNC1(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	FUNC0(16, exp.files);
	FUNC0(5, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(4, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(3, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(1, exp.file_status[GIT_DELTA_IGNORED]);
	FUNC0(3, exp.file_status[GIT_DELTA_UNTRACKED]);

	FUNC0(12, exp.hunks);

	FUNC0(19, exp.lines);
	FUNC0(3, exp.line_ctxt);
	FUNC0(12, exp.line_dels);
	FUNC0(4, exp.line_adds);

	FUNC5(diff);

	/* all done now */

	FUNC10(a);
	FUNC10(b);
}