#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_7__ {int context_lines; int interhunk_lines; int flags; } ;
typedef  TYPE_1__ git_diff_options ;
struct TYPE_8__ {scalar_t__ content; } ;
typedef  TYPE_2__ git_diff_line ;
typedef  int /*<<< orphan*/  git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_9__ {int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/  files; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const**,int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	git_repository *repo = FUNC3("status");
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp = {0};
	size_t d, num_d;

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	FUNC2(FUNC5(&diff, repo, NULL, &opts));

	num_d = FUNC6(diff);
	for (d = 0; d < num_d; ++d) {
		git_patch *patch;
		size_t h, num_h;

		FUNC2(FUNC8(&patch, diff, d));
		FUNC0(*patch);
		exp.files++;

		num_h = FUNC11(patch);
		for (h = 0; h < num_h; h++) {
			const git_diff_hunk *range;
			size_t l, num_l;

			FUNC2(FUNC9(&range, &num_l, patch, h));
			FUNC0(range);
			exp.hunks++;

			for (l = 0; l < num_l; ++l) {
				const git_diff_line *line;

				FUNC2(FUNC10(&line, patch, h, l));
				FUNC0(line && line->content);
				exp.lines++;
			}
		}

		FUNC7(patch);
	}

	FUNC1(13, exp.files);
	FUNC1(8, exp.hunks);
	FUNC1(14, exp.lines);

	FUNC4(diff);
}