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
struct git_graph {TYPE_1__* commit; } ;
struct commit_list {int /*<<< orphan*/  item; } ;
struct TYPE_2__ {struct commit_list* parents; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct git_graph*,int /*<<< orphan*/ ) ; 
 struct commit_list* FUNC1 (struct git_graph*,struct commit_list*) ; 

__attribute__((used)) static struct commit_list *FUNC2(struct git_graph *graph)
{
	struct commit_list *parents = graph->commit->parents;

	/*
	 * If this commit has no parents, ignore it
	 */
	if (!parents)
		return NULL;

	/*
	 * If the first parent is interesting, return it
	 */
	if (FUNC0(graph, parents->item))
		return parents;

	/*
	 * Otherwise, call next_interesting_parent() to get
	 * the next interesting parent
	 */
	return FUNC1(graph, parents);
}