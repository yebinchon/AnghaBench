#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  debug_id; scalar_t__ strong; } ;
struct binder_ref {TYPE_2__* death; TYPE_5__* proc; TYPE_1__ data; TYPE_3__* node; int /*<<< orphan*/  node_entry; int /*<<< orphan*/  rb_node_node; int /*<<< orphan*/  rb_node_desc; } ;
struct TYPE_10__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  refs_by_node; int /*<<< orphan*/  refs_by_desc; } ;
struct TYPE_9__ {int /*<<< orphan*/  debug_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_DEAD_BINDER ; 
 int /*<<< orphan*/  BINDER_DEBUG_INTERNAL_REFS ; 
 int /*<<< orphan*/  BINDER_STAT_DEATH ; 
 int /*<<< orphan*/  BINDER_STAT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct binder_ref *ref)
{
	bool delete_node = false;

	FUNC0(BINDER_DEBUG_INTERNAL_REFS,
		     "%d delete ref %d desc %d for node %d\n",
		      ref->proc->pid, ref->data.debug_id, ref->data.desc,
		      ref->node->debug_id);

	FUNC7(&ref->rb_node_desc, &ref->proc->refs_by_desc);
	FUNC7(&ref->rb_node_node, &ref->proc->refs_by_node);

	FUNC3(ref->node);
	if (ref->data.strong)
		FUNC1(ref->node, 1, 1);

	FUNC6(&ref->node_entry);
	delete_node = FUNC1(ref->node, 0, 1);
	FUNC4(ref->node);
	/*
	 * Clear ref->node unless we want the caller to free the node
	 */
	if (!delete_node) {
		/*
		 * The caller uses ref->node to determine
		 * whether the node needs to be freed. Clear
		 * it since the node is still alive.
		 */
		ref->node = NULL;
	}

	if (ref->death) {
		FUNC0(BINDER_DEBUG_DEAD_BINDER,
			     "%d delete ref %d desc %d has death notification\n",
			      ref->proc->pid, ref->data.debug_id,
			      ref->data.desc);
		FUNC2(ref->proc, &ref->death->work);
		FUNC5(BINDER_STAT_DEATH);
	}
	FUNC5(BINDER_STAT_REF);
}