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
struct git_graph {int state; } ;

/* Variables and functions */
#define  GRAPH_COLLAPSING 133 
#define  GRAPH_COMMIT 132 
#define  GRAPH_PADDING 131 
#define  GRAPH_POST_MERGE 130 
#define  GRAPH_PRE_COMMIT 129 
#define  GRAPH_SKIP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct git_graph*,struct strbuf*) ; 

int FUNC7(struct git_graph *graph, struct strbuf *sb)
{
	switch (graph->state) {
	case GRAPH_PADDING:
		FUNC3(graph, sb);
		return 0;
	case GRAPH_SKIP:
		FUNC6(graph, sb);
		return 0;
	case GRAPH_PRE_COMMIT:
		FUNC5(graph, sb);
		return 0;
	case GRAPH_COMMIT:
		FUNC2(graph, sb);
		return 1;
	case GRAPH_POST_MERGE:
		FUNC4(graph, sb);
		return 0;
	case GRAPH_COLLAPSING:
		FUNC1(graph, sb);
		return 0;
	}

	FUNC0(0);
	return 0;
}