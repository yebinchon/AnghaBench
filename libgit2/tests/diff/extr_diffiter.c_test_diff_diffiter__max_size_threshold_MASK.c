#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_12__ {int flags; } ;
typedef  TYPE_1__ const git_patch ;
struct TYPE_13__ {int context_lines; int interhunk_lines; int flags; int max_size; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  TYPE_1__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DIFF_FLAG_BINARY ; 
 int GIT_DIFF_FLAG_NOT_BINARY ; 
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const**,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC10 (TYPE_1__ const*) ; 
 scalar_t__ FUNC11 (TYPE_1__ const*) ; 

void FUNC12(void)
{
	git_repository *repo = FUNC4("status");
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	int file_count = 0, binary_count = 0, hunk_count = 0;
	size_t d, num_d;

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	FUNC3(FUNC6(&diff, repo, NULL, &opts));
	num_d = FUNC7(diff);

	for (d = 0; d < num_d; ++d) {
		git_patch *patch;
		const git_diff_delta *delta;

		FUNC3(FUNC9(&patch, diff, d));
		FUNC1(patch);
		delta = FUNC10(patch);
		FUNC1(delta);

		file_count++;
		hunk_count += (int)FUNC11(patch);

		FUNC0((delta->flags & (GIT_DIFF_FLAG_BINARY|GIT_DIFF_FLAG_NOT_BINARY)) != 0);
		binary_count += ((delta->flags & GIT_DIFF_FLAG_BINARY) != 0);

		FUNC8(patch);
	}

	FUNC2(13, file_count);
	FUNC2(0, binary_count);
	FUNC2(8, hunk_count);

	FUNC5(diff);

	/* try again with low file size threshold */

	file_count = binary_count = hunk_count = 0;

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
	opts.max_size = 50; /* treat anything over 50 bytes as binary! */

	FUNC3(FUNC6(&diff, repo, NULL, &opts));
	num_d = FUNC7(diff);

	for (d = 0; d < num_d; ++d) {
		git_patch *patch;
		const git_diff_delta *delta;

		FUNC3(FUNC9(&patch, diff, d));
		delta = FUNC10(patch);

		file_count++;
		hunk_count += (int)FUNC11(patch);

		FUNC0((delta->flags & (GIT_DIFF_FLAG_BINARY|GIT_DIFF_FLAG_NOT_BINARY)) != 0);
		binary_count += ((delta->flags & GIT_DIFF_FLAG_BINARY) != 0);

		FUNC8(patch);
	}

	FUNC2(13, file_count);
	/* Three files are over the 50 byte threshold:
	 * - staged_changes_file_deleted
	 * - staged_changes_modified_file
	 * - staged_new_file_modified_file
	 */
	FUNC2(3, binary_count);
	FUNC2(5, hunk_count);

	FUNC5(diff);
}