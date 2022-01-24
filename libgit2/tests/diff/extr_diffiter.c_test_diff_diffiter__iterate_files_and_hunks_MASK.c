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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  const git_patch ;
struct TYPE_4__ {int context_lines; int interhunk_lines; int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC10 (int /*<<< orphan*/  const*) ; 

void FUNC11(void)
{
	git_repository *repo = FUNC3("status");
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	size_t d, num_d;
	int file_count = 0, hunk_count = 0;

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	FUNC2(FUNC5(&diff, repo, NULL, &opts));

	num_d = FUNC6(diff);

	for (d = 0; d < num_d; ++d) {
		git_patch *patch;
		size_t h, num_h;

		FUNC2(FUNC8(&patch, diff, d));
		FUNC0(patch);

		file_count++;

		num_h = FUNC10(patch);

		for (h = 0; h < num_h; h++) {
			const git_diff_hunk *hunk;

			FUNC2(FUNC9(&hunk, NULL, patch, h));
			FUNC0(hunk);

			hunk_count++;
		}

		FUNC7(patch);
	}

	FUNC1(13, file_count);
	FUNC1(8, hunk_count);

	FUNC4(diff);
}