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
struct bfq_queue {int /*<<< orphan*/  bfqd; } ;
struct bfq_entity {int /*<<< orphan*/  weight; scalar_t__ finish; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 struct bfq_queue* FUNC1 (struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bfq_queue*,char*,unsigned long,scalar_t__,...) ; 

__attribute__((used)) static void FUNC3(struct bfq_entity *entity, unsigned long service)
{
	struct bfq_queue *bfqq = FUNC1(entity);

	entity->finish = entity->start +
		FUNC0(service, entity->weight);

	if (bfqq) {
		FUNC2(bfqq->bfqd, bfqq,
			"calc_finish: serv %lu, w %d",
			service, entity->weight);
		FUNC2(bfqq->bfqd, bfqq,
			"calc_finish: start %llu, finish %llu, delta %llu",
			entity->start, entity->finish,
			FUNC0(service, entity->weight));
	}
}