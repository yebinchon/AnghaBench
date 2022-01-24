#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
struct TYPE_5__ {int context_lines; int interhunk_lines; } ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/ * a ; 
 int /*<<< orphan*/ * b ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  diff ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 TYPE_3__ expect ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ opts ; 
 void* FUNC6 (int /*<<< orphan*/ ,char const*) ; 

void FUNC7(void)
{
	const char *a_commit = "8496071c1b46c85";
	const char *b_commit = "be3563ae3f79";

	g_repo = FUNC3("testrepo.git");

	FUNC0((a = FUNC6(g_repo, a_commit)) != NULL);
	FUNC0((b = FUNC6(g_repo, b_commit)) != NULL);

	opts.context_lines = 1;
	opts.interhunk_lines = 1;

	FUNC2(FUNC5(&diff, g_repo, a, b, &opts));

	FUNC2(FUNC4(
		diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &expect));

	FUNC1(3, expect.files);
	FUNC1(2, expect.file_status[GIT_DELTA_ADDED]);
	FUNC1(0, expect.file_status[GIT_DELTA_DELETED]);
	FUNC1(1, expect.file_status[GIT_DELTA_MODIFIED]);

	FUNC1(3, expect.hunks);

	FUNC1(4, expect.lines);
	FUNC1(0, expect.line_ctxt);
	FUNC1(3, expect.line_adds);
	FUNC1(1, expect.line_dels);
}