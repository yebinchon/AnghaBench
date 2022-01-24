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
struct git_graph {int column_capacity; int /*<<< orphan*/  new_mapping; int /*<<< orphan*/  mapping; int /*<<< orphan*/  new_columns; int /*<<< orphan*/  columns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct git_graph *graph, int num_columns)
{
	if (graph->column_capacity >= num_columns)
		return;

	do {
		graph->column_capacity *= 2;
	} while (graph->column_capacity < num_columns);

	FUNC0(graph->columns, graph->column_capacity);
	FUNC0(graph->new_columns, graph->column_capacity);
	FUNC0(graph->mapping, graph->column_capacity * 2);
	FUNC0(graph->new_mapping, graph->column_capacity * 2);
}