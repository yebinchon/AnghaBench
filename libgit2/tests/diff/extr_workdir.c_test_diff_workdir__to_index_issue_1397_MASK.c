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
struct TYPE_7__ {int context_lines; int interhunk_lines; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_8__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_MODIFIED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC9(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp;

	g_repo = FUNC3("issue_1397");

	FUNC4(g_repo, "core.autocrlf", true);

	opts.context_lines = 3;
	opts.interhunk_lines = 1;

	FUNC1(FUNC7(&diff, g_repo, NULL, &opts));

	FUNC8(&exp, 0, sizeof(exp));
	FUNC1(FUNC5(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	FUNC0(0, exp.files);
	FUNC0(0, exp.hunks);
	FUNC0(0, exp.lines);

	FUNC6(diff);
	diff = NULL;

	FUNC2("issue_1397/crlf_file.txt",
		"first line\r\nsecond line modified\r\nboth with crlf");

	FUNC1(FUNC7(&diff, g_repo, NULL, &opts));

	FUNC8(&exp, 0, sizeof(exp));
	FUNC1(FUNC5(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

	FUNC0(1, exp.files);
	FUNC0(1, exp.file_status[GIT_DELTA_MODIFIED]);

	FUNC0(1, exp.hunks);

	FUNC0(5, exp.lines);
	FUNC0(3, exp.line_ctxt);
	FUNC0(1, exp.line_adds);
	FUNC0(1, exp.line_dels);

	FUNC6(diff);
}