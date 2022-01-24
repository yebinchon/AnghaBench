#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct git_graph {int num_columns; TYPE_1__* columns; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {unsigned short color; struct commit const* commit; } ;

/* Variables and functions */
 unsigned short FUNC0 (struct git_graph const*) ; 

__attribute__((used)) static unsigned short FUNC1(const struct git_graph *graph,
					      const struct commit *commit)
{
	int i;
	for (i = 0; i < graph->num_columns; i++) {
		if (graph->columns[i].commit == commit)
			return graph->columns[i].color;
	}
	return FUNC0(graph);
}