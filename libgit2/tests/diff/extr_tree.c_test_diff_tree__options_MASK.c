#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_4__ {int member_0; int member_3; int member_6; int member_7; int member_8; int member_9; scalar_t__ files; scalar_t__* file_status; scalar_t__ hunks; scalar_t__ lines; scalar_t__ line_ctxt; scalar_t__ line_adds; scalar_t__ line_dels; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ diff_expects ;
typedef  int /*<<< orphan*/  actual ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int GIT_DELTA_TYPECHANGE ; 
 int GIT_DELTA_UNMODIFIED ; 
 int GIT_DIFF_FORCE_TEXT ; 
 int GIT_DIFF_IGNORE_WHITESPACE ; 
 int GIT_DIFF_IGNORE_WHITESPACE_CHANGE ; 
 int GIT_DIFF_IGNORE_WHITESPACE_EOL ; 
 int GIT_DIFF_NORMAL ; 
 int GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/ * a ; 
 int /*<<< orphan*/ * b ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * diff ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opts ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*) ; 

void FUNC12(void)
{
	/* grabbed a couple of commit oids from the history of the attr repo */
	const char *a_commit = "6bab5c79cd5140d0";
	const char *b_commit = "605812ab7fe421fdd";
	const char *c_commit = "f5b0af1fb4f5";
	const char *d_commit = "a97cc019851";
	git_tree *c, *d;
	diff_expects actual;
	int test_ab_or_cd[] = { 0, 0, 0, 0, 1, 1, 1, 1, 1 };
	git_diff_options test_options[] = {
		/* a vs b tests */
		FUNC0(GIT_DIFF_NORMAL, 1),
		FUNC0(GIT_DIFF_NORMAL, 3),
		FUNC0(GIT_DIFF_REVERSE, 2),
		FUNC0(GIT_DIFF_FORCE_TEXT, 2),
		/* c vs d tests */
		FUNC0(GIT_DIFF_NORMAL, 3),
		FUNC0(GIT_DIFF_IGNORE_WHITESPACE, 3),
		FUNC0(GIT_DIFF_IGNORE_WHITESPACE_CHANGE, 3),
		FUNC0(GIT_DIFF_IGNORE_WHITESPACE_EOL, 3),
		FUNC0(GIT_DIFF_IGNORE_WHITESPACE | GIT_DIFF_REVERSE, 1),
	};

	/* to generate these values:
	 * - cd to tests/resources/attr,
	 * - mv .gitted .git
	 * - git diff [options] 6bab5c79cd5140d0 605812ab7fe421fdd
	 * - mv .git .gitted
	 */
#define EXPECT_STATUS_ADM(ADDS,DELS,MODS) { 0, ADDS, DELS, MODS, 0, 0, 0, 0, 0 }

	diff_expects test_expects[] = {
		/* a vs b tests */
		{ 5, 0, EXPECT_STATUS_ADM(3, 0, 2), 4, 0, 0, 51, 2, 46, 3 },
		{ 5, 0, EXPECT_STATUS_ADM(3, 0, 2), 4, 0, 0, 53, 4, 46, 3 },
		{ 5, 0, EXPECT_STATUS_ADM(0, 3, 2), 4, 0, 0, 52, 3, 3, 46 },
		{ 5, 0, EXPECT_STATUS_ADM(3, 0, 2), 5, 0, 0, 54, 3, 47, 4 },
		/* c vs d tests */
		{ 1, 0, EXPECT_STATUS_ADM(0, 0, 1), 1, 0, 0, 22, 9, 10, 3 },
		{ 1, 0, EXPECT_STATUS_ADM(0, 0, 1), 1, 0, 0, 19, 12, 7, 0 },
		{ 1, 0, EXPECT_STATUS_ADM(0, 0, 1), 1, 0, 0, 20, 11, 8, 1 },
		{ 1, 0, EXPECT_STATUS_ADM(0, 0, 1), 1, 0, 0, 20, 11, 8, 1 },
		{ 1, 0, EXPECT_STATUS_ADM(0, 0, 1), 1, 0, 0, 18, 11, 0, 7 },
		{ 0 },
	};
	diff_expects *expected;
	int i, j;

	g_repo = FUNC5("attr");

	FUNC2((a = FUNC11(g_repo, a_commit)) != NULL);
	FUNC2((b = FUNC11(g_repo, b_commit)) != NULL);
	FUNC2((c = FUNC11(g_repo, c_commit)) != NULL);
	FUNC2((d = FUNC11(g_repo, d_commit)) != NULL);

	for (i = 0; test_expects[i].files > 0; i++) {
		FUNC10(&actual, 0, sizeof(actual)); /* clear accumulator */
		opts = test_options[i];

		if (test_ab_or_cd[i] == 0)
			FUNC4(FUNC8(&diff, g_repo, a, b, &opts));
		else
			FUNC4(FUNC8(&diff, g_repo, c, d, &opts));

		FUNC4(FUNC6(
			diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &actual));

		expected = &test_expects[i];
		FUNC3(actual.files,     expected->files);
		for (j = GIT_DELTA_UNMODIFIED; j <= GIT_DELTA_TYPECHANGE; ++j)
			FUNC3(expected->file_status[j], actual.file_status[j]);
		FUNC3(actual.hunks,     expected->hunks);
		FUNC3(actual.lines,     expected->lines);
		FUNC3(actual.line_ctxt, expected->line_ctxt);
		FUNC3(actual.line_adds, expected->line_adds);
		FUNC3(actual.line_dels, expected->line_dels);

		FUNC7(diff);
		diff = NULL;
	}

	FUNC9(c);
	FUNC9(d);
}