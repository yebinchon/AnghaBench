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
struct git_graph {scalar_t__ state; int num_columns; scalar_t__ commit; int num_parents; int /*<<< orphan*/  prev_state; struct column* columns; } ;
struct column {scalar_t__ commit; } ;

/* Variables and functions */
 scalar_t__ GRAPH_COMMIT ; 
 int /*<<< orphan*/  GRAPH_PADDING ; 
 int /*<<< orphan*/  FUNC0 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct git_graph*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct column*,char) ; 

__attribute__((used)) static void FUNC5(struct git_graph *graph, struct strbuf *sb)
{
	int i;
	int chars_written = 0;

	if (graph->state != GRAPH_COMMIT) {
		FUNC0(graph, sb);
		return;
	}

	/*
	 * Output the row containing this commit
	 * Iterate up to and including graph->num_columns,
	 * since the current commit may not be in any of the existing
	 * columns.  (This happens when the current commit doesn't have any
	 * children that we have already processed.)
	 */
	for (i = 0; i < graph->num_columns; i++) {
		struct column *col = &graph->columns[i];

		FUNC4(sb, col, '|');
		chars_written++;

		if (col->commit == graph->commit && graph->num_parents > 2) {
			int len = (graph->num_parents - 2) * 2;
			FUNC3(sb, ' ', len);
			chars_written += len;
		} else {
			FUNC2(sb, ' ');
			chars_written++;
		}
	}

	FUNC1(graph, sb, chars_written);

	/*
	 * Update graph->prev_state since we have output a padding line
	 */
	graph->prev_state = GRAPH_PADDING;
}