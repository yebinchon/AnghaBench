#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xdfile_t ;
struct xdlgroup {long end; long start; } ;
struct split_score {int /*<<< orphan*/  penalty; int /*<<< orphan*/  effective_indent; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct split_measurement {int dummy; } ;

/* Variables and functions */
 long XDF_INDENT_HEURISTIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct xdlgroup*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct xdlgroup*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct xdlgroup*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct xdlgroup*,long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct xdlgroup*,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long,struct split_measurement*) ; 
 int /*<<< orphan*/  FUNC6 (struct split_measurement*,struct split_score*) ; 
 scalar_t__ FUNC7 (struct split_score*,struct split_score*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(xdfile_t *xdf, xdfile_t *xdfo, long flags) {
	struct xdlgroup g, go;
	long earliest_end, end_matching_other;
	long groupsize;

	FUNC0(xdf, &g);
	FUNC0(xdfo, &go);

	while (1) {
		/* If the group is empty in the to-be-compacted file, skip it: */
		if (g.end == g.start)
			goto next;

		/*
		 * Now shift the change up and then down as far as possible in
		 * each direction. If it bumps into any other changes, merge them.
		 */
		do {
			groupsize = g.end - g.start;

			/*
			 * Keep track of the last "end" index that causes this
			 * group to align with a group of changed lines in the
			 * other file. -1 indicates that we haven't found such
			 * a match yet:
			 */
			end_matching_other = -1;

			/* Shift the group backward as much as possible: */
			while (!FUNC4(xdf, &g, flags))
				if (FUNC2(xdfo, &go))
					FUNC8("group sync broken sliding up");

			/*
			 * This is this highest that this group can be shifted.
			 * Record its end index:
			 */
			earliest_end = g.end;

			if (go.end > go.start)
				end_matching_other = g.end;

			/* Now shift the group forward as far as possible: */
			while (1) {
				if (FUNC3(xdf, &g, flags))
					break;
				if (FUNC1(xdfo, &go))
					FUNC8("group sync broken sliding down");

				if (go.end > go.start)
					end_matching_other = g.end;
			}
		} while (groupsize != g.end - g.start);

		/*
		 * If the group can be shifted, then we can possibly use this
		 * freedom to produce a more intuitive diff.
		 *
		 * The group is currently shifted as far down as possible, so the
		 * heuristics below only have to handle upwards shifts.
		 */

		if (g.end == earliest_end) {
			/* no shifting was possible */
		} else if (end_matching_other != -1) {
			/*
			 * Move the possibly merged group of changes back to line
			 * up with the last group of changes from the other file
			 * that it can align with.
			 */
			while (go.end == go.start) {
				if (FUNC4(xdf, &g, flags))
					FUNC8("match disappeared");
				if (FUNC2(xdfo, &go))
					FUNC8("group sync broken sliding to match");
			}
		} else if (flags & XDF_INDENT_HEURISTIC) {
			/*
			 * Indent heuristic: a group of pure add/delete lines
			 * implies two splits, one between the end of the "before"
			 * context and the start of the group, and another between
			 * the end of the group and the beginning of the "after"
			 * context. Some splits are aesthetically better and some
			 * are worse. We compute a badness "score" for each split,
			 * and add the scores for the two splits to define a
			 * "score" for each position that the group can be shifted
			 * to. Then we pick the shift with the lowest score.
			 */
			long shift, best_shift = -1;
			struct split_score best_score;

			for (shift = earliest_end; shift <= g.end; shift++) {
				struct split_measurement m;
				struct split_score score = {0, 0};

				FUNC5(xdf, shift, &m);
				FUNC6(&m, &score);
				FUNC5(xdf, shift - groupsize, &m);
				FUNC6(&m, &score);
				if (best_shift == -1 ||
				    FUNC7(&score, &best_score) <= 0) {
					best_score.effective_indent = score.effective_indent;
					best_score.penalty = score.penalty;
					best_shift = shift;
				}
			}

			while (g.end > best_shift) {
				if (FUNC4(xdf, &g, flags))
					FUNC8("best shift unreached");
				if (FUNC2(xdfo, &go))
					FUNC8("group sync broken sliding to blank line");
			}
		}

	next:
		/* Move past the just-processed group: */
		if (FUNC1(xdf, &g))
			break;
		if (FUNC1(xdfo, &go))
			FUNC8("group sync broken moving to next group");
	}

	if (!FUNC1(xdfo, &go))
		FUNC8("group sync broken at end of file");

	return 0;
}