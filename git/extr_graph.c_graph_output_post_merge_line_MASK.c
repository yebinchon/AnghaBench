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
struct git_graph {int num_columns; int num_parents; struct commit* commit; struct commit_list* columns; } ;
struct commit_list {int /*<<< orphan*/  item; struct commit* commit; } ;
struct commit {int dummy; } ;
struct column {int /*<<< orphan*/  item; struct commit* commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRAPH_COLLAPSING ; 
 int /*<<< orphan*/  GRAPH_PADDING ; 
 int /*<<< orphan*/  FUNC0 (struct commit_list*) ; 
 struct commit_list* FUNC1 (struct git_graph*,int /*<<< orphan*/ ) ; 
 struct commit_list* FUNC2 (struct git_graph*) ; 
 scalar_t__ FUNC3 (struct git_graph*) ; 
 int /*<<< orphan*/  FUNC4 (struct git_graph*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct git_graph*,int /*<<< orphan*/ ) ; 
 struct commit_list* FUNC6 (struct git_graph*,struct commit_list*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,struct commit_list*,char) ; 

__attribute__((used)) static void FUNC9(struct git_graph *graph, struct strbuf *sb)
{
	int seen_this = 0;
	int i, j, chars_written;

	/*
	 * Output the post-merge row
	 */
	chars_written = 0;
	for (i = 0; i <= graph->num_columns; i++) {
		struct column *col = &graph->columns[i];
		struct commit *col_commit;
		if (i == graph->num_columns) {
			if (seen_this)
				break;
			col_commit = graph->commit;
		} else {
			col_commit = col->commit;
		}

		if (col_commit == graph->commit) {
			/*
			 * Since the current commit is a merge find
			 * the columns for the parent commits in
			 * new_columns and use those to format the
			 * edges.
			 */
			struct commit_list *parents = NULL;
			struct column *par_column;
			seen_this = 1;
			parents = FUNC2(graph);
			FUNC0(parents);
			par_column = FUNC1(graph, parents->item);
			FUNC0(par_column);

			FUNC8(sb, par_column, '|');
			chars_written++;
			for (j = 0; j < graph->num_parents - 1; j++) {
				parents = FUNC6(graph, parents);
				FUNC0(parents);
				par_column = FUNC1(graph, parents->item);
				FUNC0(par_column);
				FUNC8(sb, par_column, '\\');
				FUNC7(sb, ' ');
			}
			chars_written += j * 2;
		} else if (seen_this) {
			FUNC8(sb, col, '\\');
			FUNC7(sb, ' ');
			chars_written += 2;
		} else {
			FUNC8(sb, col, '|');
			FUNC7(sb, ' ');
			chars_written += 2;
		}
	}

	FUNC4(graph, sb, chars_written);

	/*
	 * Update graph->state
	 */
	if (FUNC3(graph))
		FUNC5(graph, GRAPH_PADDING);
	else
		FUNC5(graph, GRAPH_COLLAPSING);
}