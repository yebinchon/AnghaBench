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
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_7__ {int context_lines; int interhunk_lines; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_8__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char const*) ; 

void FUNC9(void)
{
	/* grabbed a couple of commit oids from the history of the attr repo */
	const char *a_commit = "26a125ee1bf"; /* the current HEAD */
	const char *b_commit = "0017bd4ab1ec3"; /* the start */
	git_tree *a = FUNC8(g_repo, a_commit);
	git_tree *b = FUNC8(g_repo, b_commit);
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;

	FUNC0(a);
	FUNC0(b);

	opts.context_lines = 1;
	opts.interhunk_lines = 1;

	FUNC7(&exp, 0, sizeof(exp));

	FUNC2(FUNC5(&diff, g_repo, a, NULL, &opts));

	FUNC2(FUNC3(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	/* to generate these values:
	 * - cd to tests/resources/status,
	 * - mv .gitted .git
	 * - git diff --name-status --cached 26a125ee1bf
	 * - git diff -U1 --cached 26a125ee1bf
	 * - mv .git .gitted
	 */
	FUNC1(8, exp.files);
	FUNC1(3, exp.file_status[GIT_DELTA_ADDED]);
	FUNC1(2, exp.file_status[GIT_DELTA_DELETED]);
	FUNC1(3, exp.file_status[GIT_DELTA_MODIFIED]);

	FUNC1(8, exp.hunks);

	FUNC1(11, exp.lines);
	FUNC1(3, exp.line_ctxt);
	FUNC1(6, exp.line_adds);
	FUNC1(2, exp.line_dels);

	FUNC4(diff);
	diff = NULL;
	FUNC7(&exp, 0, sizeof(exp));

	FUNC2(FUNC5(&diff, g_repo, b, NULL, &opts));

	FUNC2(FUNC3(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	/* to generate these values:
	 * - cd to tests/resources/status,
	 * - mv .gitted .git
	 * - git diff --name-status --cached 0017bd4ab1ec3
	 * - git diff -U1 --cached 0017bd4ab1ec3
	 * - mv .git .gitted
	 */
	FUNC1(12, exp.files);
	FUNC1(7, exp.file_status[GIT_DELTA_ADDED]);
	FUNC1(2, exp.file_status[GIT_DELTA_DELETED]);
	FUNC1(3, exp.file_status[GIT_DELTA_MODIFIED]);

	FUNC1(12, exp.hunks);

	FUNC1(16, exp.lines);
	FUNC1(3, exp.line_ctxt);
	FUNC1(11, exp.line_adds);
	FUNC1(2, exp.line_dels);

	FUNC4(diff);
	diff = NULL;

	FUNC6(a);
	FUNC6(b);
}