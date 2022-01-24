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
struct git_graph {int num_parents; int commit_index; int num_columns; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRAPH_COMMIT ; 
 int /*<<< orphan*/  GRAPH_PRE_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct git_graph*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct git_graph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC3(struct git_graph *graph, struct strbuf *sb)
{
	/*
	 * Output an ellipsis to indicate that a portion
	 * of the graph is missing.
	 */
	FUNC2(sb, "...");
	FUNC0(graph, sb, 3);

	if (graph->num_parents >= 3 &&
	    graph->commit_index < (graph->num_columns - 1))
		FUNC1(graph, GRAPH_PRE_COMMIT);
	else
		FUNC1(graph, GRAPH_COMMIT);
}