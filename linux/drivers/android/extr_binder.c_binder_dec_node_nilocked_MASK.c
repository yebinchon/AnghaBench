#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct binder_proc {int /*<<< orphan*/  nodes; int /*<<< orphan*/  todo; int /*<<< orphan*/  inner_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct binder_node {int /*<<< orphan*/  debug_id; int /*<<< orphan*/  dead_node; scalar_t__ tmp_refs; TYPE_1__ work; int /*<<< orphan*/  rb_node; scalar_t__ local_weak_refs; scalar_t__ local_strong_refs; int /*<<< orphan*/  refs; scalar_t__ has_weak_ref; scalar_t__ has_strong_ref; scalar_t__ internal_strong_refs; int /*<<< orphan*/  lock; struct binder_proc* proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_INTERNAL_REFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  binder_dead_nodes_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(struct binder_node *node,
				     int strong, int internal)
{
	struct binder_proc *proc = node->proc;

	FUNC1(&node->lock);
	if (proc)
		FUNC1(&proc->inner_lock);
	if (strong) {
		if (internal)
			node->internal_strong_refs--;
		else
			node->local_strong_refs--;
		if (node->local_strong_refs || node->internal_strong_refs)
			return false;
	} else {
		if (!internal)
			node->local_weak_refs--;
		if (node->local_weak_refs || node->tmp_refs ||
				!FUNC7(&node->refs))
			return false;
	}

	if (proc && (node->has_strong_ref || node->has_weak_ref)) {
		if (FUNC8(&node->work.entry)) {
			FUNC4(&node->work, &proc->todo);
			FUNC5(proc);
		}
	} else {
		if (FUNC7(&node->refs) && !node->local_strong_refs &&
		    !node->local_weak_refs && !node->tmp_refs) {
			if (proc) {
				FUNC3(&node->work);
				FUNC9(&node->rb_node, &proc->nodes);
				FUNC2(BINDER_DEBUG_INTERNAL_REFS,
					     "refless node %d deleted\n",
					     node->debug_id);
			} else {
				FUNC0(!FUNC8(&node->work.entry));
				FUNC10(&binder_dead_nodes_lock);
				/*
				 * tmp_refs could have changed so
				 * check it again
				 */
				if (node->tmp_refs) {
					FUNC11(&binder_dead_nodes_lock);
					return false;
				}
				FUNC6(&node->dead_node);
				FUNC11(&binder_dead_nodes_lock);
				FUNC2(BINDER_DEBUG_INTERNAL_REFS,
					     "dead node %d deleted\n",
					     node->debug_id);
			}
			return true;
		}
	}
	return false;
}