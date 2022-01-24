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
struct list_head {int dummy; } ;
struct binder_ref_data {int dummy; } ;
struct binder_ref {struct binder_ref_data data; } ;
struct binder_proc {int dummy; } ;
struct binder_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct binder_ref* FUNC0 (struct binder_proc*,struct binder_node*,struct binder_ref*) ; 
 int FUNC1 (struct binder_ref*,int,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_ref*) ; 
 struct binder_ref* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct binder_proc *proc,
			struct binder_node *node,
			bool strong,
			struct list_head *target_list,
			struct binder_ref_data *rdata)
{
	struct binder_ref *ref;
	struct binder_ref *new_ref = NULL;
	int ret = 0;

	FUNC2(proc);
	ref = FUNC0(proc, node, NULL);
	if (!ref) {
		FUNC3(proc);
		new_ref = FUNC5(sizeof(*ref), GFP_KERNEL);
		if (!new_ref)
			return -ENOMEM;
		FUNC2(proc);
		ref = FUNC0(proc, node, new_ref);
	}
	ret = FUNC1(ref, strong, target_list);
	*rdata = ref->data;
	FUNC3(proc);
	if (new_ref && ref != new_ref)
		/*
		 * Another thread created the ref first so
		 * free the one we allocated
		 */
		FUNC4(new_ref);
	return ret;
}