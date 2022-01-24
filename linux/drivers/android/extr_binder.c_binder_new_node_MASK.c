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
struct flat_binder_object {int dummy; } ;
struct binder_proc {int dummy; } ;
struct binder_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct binder_node* FUNC0 (struct binder_proc*,struct binder_node*,struct flat_binder_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_node*) ; 
 struct binder_node* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct binder_node *FUNC5(struct binder_proc *proc,
					   struct flat_binder_object *fp)
{
	struct binder_node *node;
	struct binder_node *new_node = FUNC4(sizeof(*node), GFP_KERNEL);

	if (!new_node)
		return NULL;
	FUNC1(proc);
	node = FUNC0(proc, new_node, fp);
	FUNC2(proc);
	if (node != new_node)
		/*
		 * The node was already added by another thread
		 */
		FUNC3(new_node);

	return node;
}