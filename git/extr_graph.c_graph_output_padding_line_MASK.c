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
struct git_graph {int num_new_columns; int /*<<< orphan*/ * new_columns; int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct git_graph*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC3(struct git_graph *graph,
				      struct strbuf *sb)
{
	int i;

	/*
	 * We could conceivable be called with a NULL commit
	 * if our caller has a bug, and invokes graph_next_line()
	 * immediately after graph_init(), without first calling
	 * graph_update().  Return without outputting anything in this
	 * case.
	 */
	if (!graph->commit)
		return;

	/*
	 * Output a padding row, that leaves all branch lines unchanged
	 */
	for (i = 0; i < graph->num_new_columns; i++) {
		FUNC2(sb, &graph->new_columns[i], '|');
		FUNC1(sb, ' ');
	}

	FUNC0(graph, sb, graph->num_new_columns * 2);
}