#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_9__ {scalar_t__ origin; int old_lineno; int new_lineno; } ;
typedef  TYPE_1__ git_diff_line ;
struct TYPE_10__ {scalar_t__ status; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int GIT_DELTA_MODIFIED ; 
 scalar_t__ GIT_DIFF_LINE_ADD_EOFNL ; 
 scalar_t__ GIT_DIFF_LINE_CONTEXT_EOFNL ; 
 scalar_t__ GIT_DIFF_LINE_DEL_EOFNL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const**,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC13 (size_t*,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 size_t FUNC15 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC16 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 size_t FUNC18 (char const*) ; 

__attribute__((used)) static void FUNC19(
	git_repository *repo, size_t hunks,
	size_t adds, size_t dels, size_t ctxt, size_t *sizes,
	const char *expected)
{
	git_diff *diff;
	git_patch *patch;
	const git_diff_delta *delta;
	size_t actual_ctxt, actual_adds, actual_dels;

	FUNC4(FUNC7(&diff, repo, NULL, NULL));

	FUNC1(1, (int)FUNC8(diff));

	FUNC4(FUNC10(&patch, diff, 0));
	FUNC0((delta = FUNC11(patch)) != NULL);
	FUNC1(GIT_DELTA_MODIFIED, (int)delta->status);

	FUNC1((int)hunks, (int)FUNC14(patch));

	FUNC4( FUNC13(
		&actual_ctxt, &actual_adds, &actual_dels, patch) );

	FUNC3(ctxt, actual_ctxt);
	FUNC3(adds, actual_adds);
	FUNC3(dels, actual_dels);

	if (expected != NULL) {
		git_buf buf = GIT_BUF_INIT;
		FUNC4(FUNC17(&buf, patch));
		FUNC2(expected, buf.ptr);
		FUNC5(&buf);

		FUNC3(
			FUNC18(expected), FUNC16(patch, 1, 1, 1));
	}

	if (sizes) {
		if (sizes[0])
			FUNC3(sizes[0], FUNC16(patch, 0, 0, 0));
		if (sizes[1])
			FUNC3(sizes[1], FUNC16(patch, 1, 0, 0));
		if (sizes[2])
			FUNC3(sizes[2], FUNC16(patch, 1, 1, 0));
	}

	/* walk lines in hunk with basic sanity checks */
	for (; hunks > 0; --hunks) {
		size_t i, max_i;
		const git_diff_line *line;
		int last_new_lineno = -1, last_old_lineno = -1;

		max_i = FUNC15(patch, hunks - 1);

		for (i = 0; i < max_i; ++i) {
			int expected = 1;

			FUNC4(
				FUNC12(&line, patch, hunks - 1, i));

			if (line->origin == GIT_DIFF_LINE_ADD_EOFNL ||
				line->origin == GIT_DIFF_LINE_DEL_EOFNL ||
				line->origin == GIT_DIFF_LINE_CONTEXT_EOFNL)
				expected = 0;

			if (line->old_lineno >= 0) {
				if (last_old_lineno >= 0)
					FUNC1(
						expected, line->old_lineno - last_old_lineno);
				last_old_lineno = line->old_lineno;
			}

			if (line->new_lineno >= 0) {
				if (last_new_lineno >= 0)
					FUNC1(
						expected, line->new_lineno - last_new_lineno);
				last_new_lineno = line->new_lineno;
			}
		}
	}

	FUNC9(patch);
	FUNC6(diff);
}