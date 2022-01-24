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
typedef  int /*<<< orphan*/  const git_patch ;
typedef  int /*<<< orphan*/  git_diff_line ;
typedef  int /*<<< orphan*/  git_diff_hunk ;
struct TYPE_3__ {int context_lines; scalar_t__ interhunk_lines; } ;

/* Variables and functions */
 int /*<<< orphan*/ * a ; 
 int /*<<< orphan*/ * b ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  diff ; 
 int /*<<< orphan*/  g_repo ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,size_t,size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/  const*) ; 
 TYPE_1__ opts ; 
 void* FUNC12 (int /*<<< orphan*/ ,char const*) ; 

void FUNC13(void)
{
	const char *a_commit = "d70d245ed97ed2aa596dd1af6536e4bfdb047b69";
	const char *b_commit = "7a9e0b02e63179929fed24f0a3e0f19168114d10";
	size_t d, num_d, h, num_h, l, num_l;
	git_patch *patch;
	const git_diff_hunk *hunk;
	const git_diff_line *line;

	g_repo = FUNC4("diff");

	FUNC0((a = FUNC12(g_repo, a_commit)) != NULL);
	FUNC0((b = FUNC12(g_repo, b_commit)) != NULL);

	opts.context_lines = 1;
	opts.interhunk_lines = 0;

	FUNC3(FUNC6(&diff, g_repo, a, b, &opts));

	num_d = FUNC5(diff);
	for (d = 0; d < num_d; ++d) {
		FUNC3(FUNC8(&patch, diff, d));
		FUNC0(patch);

		num_h = FUNC11(patch);
		for (h = 0; h < num_h; h++) {
			FUNC3(FUNC9(&hunk, &num_l, patch, h));

			for (l = 0; l < num_l; ++l) {
				FUNC3(FUNC10(&line, patch, h, l));
				FUNC0(line);
			}

			FUNC2(FUNC10(&line, patch, h, num_l));
		}

		FUNC2(FUNC9(&hunk, &num_l, patch, num_h));

		FUNC7(patch);
	}

	FUNC2(FUNC8(&patch, diff, num_d));

	FUNC1(2, (int)num_d);
}