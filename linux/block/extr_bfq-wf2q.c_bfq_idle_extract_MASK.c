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
struct rb_node {int dummy; } ;
struct bfq_service_tree {int /*<<< orphan*/  idle; struct bfq_entity* last_idle; struct bfq_entity* first_idle; } ;
struct bfq_queue {int /*<<< orphan*/  bfqq_list; } ;
struct bfq_entity {int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 void* FUNC0 (struct rb_node*) ; 
 struct bfq_queue* FUNC1 (struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC4 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bfq_service_tree *st,
			     struct bfq_entity *entity)
{
	struct bfq_queue *bfqq = FUNC1(entity);
	struct rb_node *next;

	if (entity == st->first_idle) {
		next = FUNC4(&entity->rb_node);
		st->first_idle = FUNC0(next);
	}

	if (entity == st->last_idle) {
		next = FUNC5(&entity->rb_node);
		st->last_idle = FUNC0(next);
	}

	FUNC2(&st->idle, entity);

	if (bfqq)
		FUNC3(&bfqq->bfqq_list);
}