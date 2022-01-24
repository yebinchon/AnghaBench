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
struct bfq_service_tree {int /*<<< orphan*/  vtime; int /*<<< orphan*/  idle; int /*<<< orphan*/  active; } ;
struct bfq_sched_data {struct bfq_entity* in_service_entity; } ;
struct bfq_entity {int /*<<< orphan*/  finish; int /*<<< orphan*/ * tree; scalar_t__ service; int /*<<< orphan*/  on_st; struct bfq_sched_data* sched_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_service_tree*,struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_entity*,scalar_t__) ; 
 struct bfq_service_tree* FUNC2 (struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_service_tree*,struct bfq_entity*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfq_service_tree*,struct bfq_entity*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfq_service_tree*,struct bfq_entity*) ; 

bool FUNC7(struct bfq_entity *entity, bool ins_into_idle_tree)
{
	struct bfq_sched_data *sd = entity->sched_data;
	struct bfq_service_tree *st;
	bool is_in_service;

	if (!entity->on_st) /* entity never activated, or already inactive */
		return false;

	/*
	 * If we get here, then entity is active, which implies that
	 * bfq_group_set_parent has already been invoked for the group
	 * represented by entity. Therefore, the field
	 * entity->sched_data has been set, and we can safely use it.
	 */
	st = FUNC2(entity);
	is_in_service = entity == sd->in_service_entity;

	FUNC1(entity, entity->service);

	if (is_in_service)
		sd->in_service_entity = NULL;
	else
		/*
		 * Non in-service entity: nobody will take care of
		 * resetting its service counter on expiration. Do it
		 * now.
		 */
		entity->service = 0;

	if (entity->tree == &st->active)
		FUNC0(st, entity);
	else if (!is_in_service && entity->tree == &st->idle)
		FUNC5(st, entity);

	if (!ins_into_idle_tree || !FUNC4(entity->finish, st->vtime))
		FUNC3(st, entity, is_in_service);
	else
		FUNC6(st, entity);

	return true;
}