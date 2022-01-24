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
struct binder_node {scalar_t__ tmp_refs; int /*<<< orphan*/  proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  binder_dead_nodes_lock ; 
 int FUNC3 (struct binder_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct binder_node *node)
{
	bool free_node;

	FUNC5(node);
	if (!node->proc)
		FUNC7(&binder_dead_nodes_lock);
	else
		FUNC1(&binder_dead_nodes_lock);
	node->tmp_refs--;
	FUNC0(node->tmp_refs < 0);
	if (!node->proc)
		FUNC8(&binder_dead_nodes_lock);
	else
		FUNC2(&binder_dead_nodes_lock);
	/*
	 * Call binder_dec_node() to check if all refcounts are 0
	 * and cleanup is needed. Calling with strong=0 and internal=1
	 * causes no actual reference to be released in binder_dec_node().
	 * If that changes, a change is needed here too.
	 */
	free_node = FUNC3(node, 0, 1);
	FUNC6(node);
	if (free_node)
		FUNC4(node);
}