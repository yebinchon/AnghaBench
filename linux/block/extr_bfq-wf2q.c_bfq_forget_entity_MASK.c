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
struct bfq_service_tree {int /*<<< orphan*/  wsum; } ;
struct bfq_queue {int dummy; } ;
struct bfq_entity {int on_st; scalar_t__ weight; } ;

/* Variables and functions */
 struct bfq_queue* FUNC0 (struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_queue*) ; 

__attribute__((used)) static void FUNC2(struct bfq_service_tree *st,
			      struct bfq_entity *entity,
			      bool is_in_service)
{
	struct bfq_queue *bfqq = FUNC0(entity);

	entity->on_st = false;
	st->wsum -= entity->weight;
	if (bfqq && !is_in_service)
		FUNC1(bfqq);
}