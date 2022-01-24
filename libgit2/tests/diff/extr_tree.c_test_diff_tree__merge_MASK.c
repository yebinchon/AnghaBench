#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_3__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;

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
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 TYPE_1__ expect ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ,char const*) ; 

void FUNC10(void)
{
	/* grabbed a couple of commit oids from the history of the attr repo */
	const char *a_commit = "605812a";
	const char *b_commit = "370fe9ec22";
	const char *c_commit = "f5b0af1fb4f5c";
	git_tree *c;
	git_diff *diff1 = NULL, *diff2 = NULL;

	g_repo = FUNC3("attr");

	FUNC0((a = FUNC9(g_repo, a_commit)) != NULL);
	FUNC0((b = FUNC9(g_repo, b_commit)) != NULL);
	FUNC0((c = FUNC9(g_repo, c_commit)) != NULL);

	FUNC2(FUNC7(&diff1, g_repo, a, b, NULL));

	FUNC2(FUNC7(&diff2, g_repo, c, b, NULL));

	FUNC8(c);

	FUNC2(FUNC6(diff1, diff2));

	FUNC5(diff2);

	FUNC2(FUNC4(
		diff1, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &expect));

	FUNC1(6, expect.files);
	FUNC1(2, expect.file_status[GIT_DELTA_ADDED]);
	FUNC1(1, expect.file_status[GIT_DELTA_DELETED]);
	FUNC1(3, expect.file_status[GIT_DELTA_MODIFIED]);

	FUNC1(6, expect.hunks);

	FUNC1(59, expect.lines);
	FUNC1(1, expect.line_ctxt);
	FUNC1(36, expect.line_adds);
	FUNC1(22, expect.line_dels);

	FUNC5(diff1);
}