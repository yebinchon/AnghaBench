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
struct bfq_service_tree {int dummy; } ;
struct bfq_entity {TYPE_1__* sched_data; } ;
struct TYPE_2__ {struct bfq_entity* in_service_entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_service_tree*,struct bfq_entity*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_service_tree*,struct bfq_entity*) ; 

void FUNC2(struct bfq_service_tree *st, struct bfq_entity *entity)
{
	FUNC1(st, entity);
	FUNC0(st, entity,
			  entity == entity->sched_data->in_service_entity);
}