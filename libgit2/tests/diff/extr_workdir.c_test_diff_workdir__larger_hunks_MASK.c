#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  const git_patch ;
struct TYPE_5__ {int context_lines; scalar_t__ interhunk_lines; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff_line ;
typedef  int /*<<< orphan*/  git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,size_t,size_t) ; 
 size_t FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char const*) ; 

void FUNC16(void)
{
	const char *a_commit = "d70d245ed97ed2aa596dd1af6536e4bfdb047b69";
	const char *b_commit = "7a9e0b02e63179929fed24f0a3e0f19168114d10";
	git_tree *a, *b;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	size_t i, d, num_d, h, num_h, l, num_l;

	g_repo = FUNC4("diff");

	FUNC0((a = FUNC15(g_repo, a_commit)) != NULL);
	FUNC0((b = FUNC15(g_repo, b_commit)) != NULL);

	opts.context_lines = 1;
	opts.interhunk_lines = 0;

	for (i = 0; i <= 2; ++i) {
		git_diff *diff = NULL;
		git_patch *patch;
		const git_diff_hunk *hunk;
		const git_diff_line *line;

		/* okay, this is a bit silly, but oh well */
		switch (i) {
		case 0:
			FUNC3(FUNC6(&diff, g_repo, NULL, &opts));
			break;
		case 1:
			FUNC3(FUNC8(&diff, g_repo, a, &opts));
			break;
		case 2:
			FUNC3(FUNC8(&diff, g_repo, b, &opts));
			break;
		}

		num_d = FUNC7(diff);
		FUNC1(2, (int)num_d);

		for (d = 0; d < num_d; ++d) {
			FUNC3(FUNC10(&patch, diff, d));
			FUNC0(patch);

			num_h = FUNC13(patch);
			for (h = 0; h < num_h; h++) {
				FUNC3(FUNC11(&hunk, &num_l, patch, h));

				for (l = 0; l < num_l; ++l) {
					FUNC3(
						FUNC12(&line, patch, h, l));
					FUNC0(line);
				}

				/* confirm fail after the last item */
				FUNC2(
					FUNC12(&line, patch, h, num_l));
			}

			/* confirm fail after the last item */
			FUNC2(FUNC11(&hunk, &num_l, patch, num_h));

			FUNC9(patch);
		}

		FUNC5(diff);
	}

	FUNC14(a);
	FUNC14(b);
}