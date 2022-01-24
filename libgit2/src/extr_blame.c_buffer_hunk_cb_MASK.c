#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {scalar_t__ old_lines; scalar_t__ old_start; scalar_t__ new_start; } ;
typedef  TYPE_1__ git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff_delta ;
struct TYPE_13__ {scalar_t__ orig_start_line_number; } ;
typedef  TYPE_2__ git_blame_hunk ;
struct TYPE_14__ {TYPE_2__* current_hunk; int /*<<< orphan*/  hunks; int /*<<< orphan*/  path; scalar_t__ current_diff_line; } ;
typedef  TYPE_3__ git_blame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 TYPE_2__* FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(
	const git_diff_delta *delta,
	const git_diff_hunk *hunk,
	void *payload)
{
	git_blame *blame = (git_blame*)payload;
	uint32_t wedge_line;

	FUNC1(delta);

	wedge_line = (hunk->old_lines == 0) ? hunk->new_start : hunk->old_start;
	blame->current_diff_line = wedge_line;

	blame->current_hunk = (git_blame_hunk*)FUNC2(blame, wedge_line);
	if (!blame->current_hunk) {
		/* Line added at the end of the file */
		blame->current_hunk = FUNC5(wedge_line, 0, wedge_line, blame->path);
		FUNC0(blame->current_hunk);

		FUNC3(&blame->hunks, blame->current_hunk);
	} else if (!FUNC4(blame->current_hunk, wedge_line)){
		/* If this hunk doesn't start between existing hunks, split a hunk up so it does */
		blame->current_hunk = FUNC6(&blame->hunks, blame->current_hunk,
				wedge_line - blame->current_hunk->orig_start_line_number, true);
		FUNC0(blame->current_hunk);
	}

	return 0;
}