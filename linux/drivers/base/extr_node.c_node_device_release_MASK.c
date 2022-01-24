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
struct node {int /*<<< orphan*/  node_work; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct node*) ; 
 struct node* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct node *node = FUNC2(dev);

#if defined(CONFIG_MEMORY_HOTPLUG_SPARSE) && defined(CONFIG_HUGETLBFS)
	/*
	 * We schedule the work only when a memory section is
	 * onlined/offlined on this node. When we come here,
	 * all the memory on this node has been offlined,
	 * so we won't enqueue new work to this work.
	 *
	 * The work is using node->node_work, so we should
	 * flush work before freeing the memory.
	 */
	flush_work(&node->node_work);
#endif
	FUNC1(node);
}