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
struct strbuf {int dummy; } ;
struct git_graph {int num_columns; int num_parents; scalar_t__ prev_state; int prev_commit_index; struct commit* commit; struct column* columns; } ;
struct commit {int dummy; } ;
struct column {struct commit* commit; } ;

/* Variables and functions */
 scalar_t__ GRAPH_COLLAPSING ; 
 scalar_t__ GRAPH_PADDING ; 
 scalar_t__ GRAPH_POST_MERGE ; 
 scalar_t__ FUNC0 (struct git_graph*,struct strbuf*) ; 
 scalar_t__ FUNC1 (struct git_graph*) ; 
 int /*<<< orphan*/  FUNC2 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct git_graph*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct git_graph*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,struct column*,char) ; 

__attribute__((used)) static void FUNC7(struct git_graph *graph, struct strbuf *sb)
{
	int seen_this = 0;
	int i, chars_written;

	/*
	 * Output the row containing this commit
	 * Iterate up to and including graph->num_columns,
	 * since the current commit may not be in any of the existing
	 * columns.  (This happens when the current commit doesn't have any
	 * children that we have already processed.)
	 */
	seen_this = 0;
	chars_written = 0;
	for (i = 0; i <= graph->num_columns; i++) {
		struct column *col = &graph->columns[i];
		struct commit *col_commit;
		if (i == graph->num_columns) {
			if (seen_this)
				break;
			col_commit = graph->commit;
		} else {
			col_commit = graph->columns[i].commit;
		}

		if (col_commit == graph->commit) {
			seen_this = 1;
			FUNC2(graph, sb);
			chars_written++;

			if (graph->num_parents > 2)
				chars_written += FUNC0(graph,
									  sb);
		} else if (seen_this && (graph->num_parents > 2)) {
			FUNC6(sb, col, '\\');
			chars_written++;
		} else if (seen_this && (graph->num_parents == 2)) {
			/*
			 * This is a 2-way merge commit.
			 * There is no GRAPH_PRE_COMMIT stage for 2-way
			 * merges, so this is the first line of output
			 * for this commit.  Check to see what the previous
			 * line of output was.
			 *
			 * If it was GRAPH_POST_MERGE, the branch line
			 * coming into this commit may have been '\',
			 * and not '|' or '/'.  If so, output the branch
			 * line as '\' on this line, instead of '|'.  This
			 * makes the output look nicer.
			 */
			if (graph->prev_state == GRAPH_POST_MERGE &&
			    graph->prev_commit_index < i)
				FUNC6(sb, col, '\\');
			else
				FUNC6(sb, col, '|');
			chars_written++;
		} else {
			FUNC6(sb, col, '|');
			chars_written++;
		}
		FUNC5(sb, ' ');
		chars_written++;
	}

	FUNC3(graph, sb, chars_written);

	/*
	 * Update graph->state
	 */
	if (graph->num_parents > 1)
		FUNC4(graph, GRAPH_POST_MERGE);
	else if (FUNC1(graph))
		FUNC4(graph, GRAPH_PADDING);
	else
		FUNC4(graph, GRAPH_COLLAPSING);
}