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
struct bfq_service_tree {int /*<<< orphan*/  idle; struct bfq_entity* last_idle; struct bfq_entity* first_idle; } ;
struct bfq_queue {TYPE_1__* bfqd; int /*<<< orphan*/  bfqq_list; } ;
struct bfq_entity {int /*<<< orphan*/  finish; } ;
struct TYPE_2__ {int /*<<< orphan*/  idle_list; } ;

/* Variables and functions */
 struct bfq_queue* FUNC0 (struct bfq_entity*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bfq_service_tree *st,
			    struct bfq_entity *entity)
{
	struct bfq_queue *bfqq = FUNC0(entity);
	struct bfq_entity *first_idle = st->first_idle;
	struct bfq_entity *last_idle = st->last_idle;

	if (!first_idle || FUNC1(first_idle->finish, entity->finish))
		st->first_idle = entity;
	if (!last_idle || FUNC1(entity->finish, last_idle->finish))
		st->last_idle = entity;

	FUNC2(&st->idle, entity);

	if (bfqq)
		FUNC3(&bfqq->bfqq_list, &bfqq->bfqd->idle_list);
}