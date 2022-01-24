#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_18__ {scalar_t__ origin; } ;
typedef  TYPE_1__ git_diff_line ;
typedef  TYPE_1__ git_diff_hunk ;
typedef  TYPE_1__ git_diff_delta ;
struct TYPE_19__ {int lines_in_hunk; } ;
typedef  TYPE_4__ git_blame_hunk ;
struct TYPE_20__ {int current_diff_line; int /*<<< orphan*/  hunks; TYPE_4__* current_hunk; int /*<<< orphan*/  path; } ;
typedef  TYPE_5__ git_blame ;

/* Variables and functions */
 scalar_t__ GIT_DIFF_LINE_ADDITION ; 
 scalar_t__ GIT_DIFF_LINE_DELETION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptrs_equal_cmp ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t,int) ; 

__attribute__((used)) static int FUNC11(
	const git_diff_delta *delta,
	const git_diff_hunk *hunk,
	const git_diff_line *line,
	void *payload)
{
	git_blame *blame = (git_blame*)payload;

	FUNC1(delta);
	FUNC1(hunk);
	FUNC1(line);

	if (line->origin == GIT_DIFF_LINE_ADDITION) {
		if (FUNC8(blame->current_hunk) &&
		    FUNC7(blame->current_hunk, blame->current_diff_line)) {
			/* Append to the current buffer-blame hunk */
			blame->current_hunk->lines_in_hunk++;
			FUNC10(&blame->hunks, blame->current_diff_line+1, 1);
		} else {
			/* Create a new buffer-blame hunk with this line */
			FUNC10(&blame->hunks, blame->current_diff_line, 1);
			blame->current_hunk = FUNC9(blame->current_diff_line, 1, 0, blame->path);
			FUNC0(blame->current_hunk);

			FUNC4(&blame->hunks, blame->current_hunk, NULL);
		}
		blame->current_diff_line++;
	}

	if (line->origin == GIT_DIFF_LINE_DELETION) {
		/* Trim the line from the current hunk; remove it if it's now empty */
		size_t shift_base = blame->current_diff_line + blame->current_hunk->lines_in_hunk+1;

		if (--(blame->current_hunk->lines_in_hunk) == 0) {
			size_t i;
			shift_base--;
			if (!FUNC6(&i, &blame->hunks, ptrs_equal_cmp, blame->current_hunk)) {
				FUNC5(&blame->hunks, i);
				FUNC2(blame->current_hunk);
				blame->current_hunk = (git_blame_hunk*)FUNC3(blame, (uint32_t)i);
			}
		}
		FUNC10(&blame->hunks, shift_base, -1);
	}
	return 0;
}