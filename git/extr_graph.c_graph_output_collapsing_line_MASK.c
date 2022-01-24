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
struct git_graph {int mapping_size; int* new_mapping; int* mapping; int /*<<< orphan*/ * new_columns; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRAPH_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct git_graph*) ; 
 int /*<<< orphan*/  FUNC3 (struct git_graph*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct git_graph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC7(struct git_graph *graph, struct strbuf *sb)
{
	int i;
	short used_horizontal = 0;
	int horizontal_edge = -1;
	int horizontal_edge_target = -1;

	/*
	 * Clear out the new_mapping array
	 */
	for (i = 0; i < graph->mapping_size; i++)
		graph->new_mapping[i] = -1;

	for (i = 0; i < graph->mapping_size; i++) {
		int target = graph->mapping[i];
		if (target < 0)
			continue;

		/*
		 * Since update_columns() always inserts the leftmost
		 * column first, each branch's target location should
		 * always be either its current location or to the left of
		 * its current location.
		 *
		 * We never have to move branches to the right.  This makes
		 * the graph much more legible, since whenever branches
		 * cross, only one is moving directions.
		 */
		FUNC1(target * 2 <= i);

		if (target * 2 == i) {
			/*
			 * This column is already in the
			 * correct place
			 */
			FUNC1(graph->new_mapping[i] == -1);
			graph->new_mapping[i] = target;
		} else if (graph->new_mapping[i - 1] < 0) {
			/*
			 * Nothing is to the left.
			 * Move to the left by one
			 */
			graph->new_mapping[i - 1] = target;
			/*
			 * If there isn't already an edge moving horizontally
			 * select this one.
			 */
			if (horizontal_edge == -1) {
				int j;
				horizontal_edge = i;
				horizontal_edge_target = target;
				/*
				 * The variable target is the index of the graph
				 * column, and therefore target*2+3 is the
				 * actual screen column of the first horizontal
				 * line.
				 */
				for (j = (target * 2)+3; j < (i - 2); j += 2)
					graph->new_mapping[j] = target;
			}
		} else if (graph->new_mapping[i - 1] == target) {
			/*
			 * There is a branch line to our left
			 * already, and it is our target.  We
			 * combine with this line, since we share
			 * the same parent commit.
			 *
			 * We don't have to add anything to the
			 * output or new_mapping, since the
			 * existing branch line has already taken
			 * care of it.
			 */
		} else {
			/*
			 * There is a branch line to our left,
			 * but it isn't our target.  We need to
			 * cross over it.
			 *
			 * The space just to the left of this
			 * branch should always be empty.
			 *
			 * The branch to the left of that space
			 * should be our eventual target.
			 */
			FUNC1(graph->new_mapping[i - 1] > target);
			FUNC1(graph->new_mapping[i - 2] < 0);
			FUNC1(graph->new_mapping[i - 3] == target);
			graph->new_mapping[i - 2] = target;
			/*
			 * Mark this branch as the horizontal edge to
			 * prevent any other edges from moving
			 * horizontally.
			 */
			if (horizontal_edge == -1)
				horizontal_edge = i;
		}
	}

	/*
	 * The new mapping may be 1 smaller than the old mapping
	 */
	if (graph->new_mapping[graph->mapping_size - 1] < 0)
		graph->mapping_size--;

	/*
	 * Output out a line based on the new mapping info
	 */
	for (i = 0; i < graph->mapping_size; i++) {
		int target = graph->new_mapping[i];
		if (target < 0)
			FUNC5(sb, ' ');
		else if (target * 2 == i)
			FUNC6(sb, &graph->new_columns[target], '|');
		else if (target == horizontal_edge_target &&
			 i != horizontal_edge - 1) {
				/*
				 * Set the mappings for all but the
				 * first segment to -1 so that they
				 * won't continue into the next line.
				 */
				if (i != (target * 2)+3)
					graph->new_mapping[i] = -1;
				used_horizontal = 1;
			FUNC6(sb, &graph->new_columns[target], '_');
		} else {
			if (used_horizontal && i < horizontal_edge)
				graph->new_mapping[i] = -1;
			FUNC6(sb, &graph->new_columns[target], '/');

		}
	}

	FUNC3(graph, sb, graph->mapping_size);

	/*
	 * Swap mapping and new_mapping
	 */
	FUNC0(graph->mapping, graph->new_mapping);

	/*
	 * If graph->mapping indicates that all of the branch lines
	 * are already in the correct positions, we are done.
	 * Otherwise, we need to collapse some branch lines together.
	 */
	if (FUNC2(graph))
		FUNC4(graph, GRAPH_PADDING);
}