#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct rb_node* rb_node; } ;
struct TYPE_6__ {TYPE_2__ rb_root; } ;
struct throtl_service_queue {TYPE_3__ pending_tree; } ;
struct TYPE_4__ {struct throtl_service_queue* parent_sq; } ;
struct throtl_grp {unsigned long disptime; int /*<<< orphan*/  rb_node; TYPE_1__ service_queue; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;

/* Variables and functions */
 struct throtl_grp* FUNC0 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct throtl_grp *tg)
{
	struct throtl_service_queue *parent_sq = tg->service_queue.parent_sq;
	struct rb_node **node = &parent_sq->pending_tree.rb_root.rb_node;
	struct rb_node *parent = NULL;
	struct throtl_grp *__tg;
	unsigned long key = tg->disptime;
	bool leftmost = true;

	while (*node != NULL) {
		parent = *node;
		__tg = FUNC0(parent);

		if (FUNC3(key, __tg->disptime))
			node = &parent->rb_left;
		else {
			node = &parent->rb_right;
			leftmost = false;
		}
	}

	FUNC2(&tg->rb_node, parent, node);
	FUNC1(&tg->rb_node, &parent_sq->pending_tree,
			       leftmost);
}