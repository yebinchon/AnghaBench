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
struct binder_node {scalar_t__ proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  binder_dead_nodes_lock ; 
 int /*<<< orphan*/  FUNC0 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct binder_node *node)
{
	FUNC3(node);
	if (node->proc)
		FUNC1(node->proc);
	else
		FUNC5(&binder_dead_nodes_lock);
	FUNC0(node);
	if (node->proc)
		FUNC2(node->proc);
	else
		FUNC6(&binder_dead_nodes_lock);
	FUNC4(node);
}