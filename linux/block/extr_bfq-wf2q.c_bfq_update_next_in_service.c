
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int vtime; } ;
struct bfq_sched_data {struct bfq_entity* next_in_service; struct bfq_service_tree* service_tree; } ;
struct bfq_entity {int finish; int start; } ;


 unsigned int bfq_class_idx (struct bfq_entity*) ;
 scalar_t__ bfq_gt (int ,int ) ;
 struct bfq_entity* bfq_lookup_next_entity (struct bfq_sched_data*,int) ;
 int bfq_update_parent_budget (struct bfq_entity*) ;

__attribute__((used)) static bool bfq_update_next_in_service(struct bfq_sched_data *sd,
           struct bfq_entity *new_entity,
           bool expiration)
{
 struct bfq_entity *next_in_service = sd->next_in_service;
 bool parent_sched_may_change = 0;
 bool change_without_lookup = 0;
 if (new_entity && new_entity != sd->next_in_service) {






  change_without_lookup = 1;






  if (next_in_service) {
   unsigned int new_entity_class_idx =
    bfq_class_idx(new_entity);
   struct bfq_service_tree *st =
    sd->service_tree + new_entity_class_idx;

   change_without_lookup =
    (new_entity_class_idx ==
     bfq_class_idx(next_in_service)
     &&
     !bfq_gt(new_entity->start, st->vtime)
     &&
     bfq_gt(next_in_service->finish,
     new_entity->finish));
  }

  if (change_without_lookup)
   next_in_service = new_entity;
 }

 if (!change_without_lookup)
  next_in_service = bfq_lookup_next_entity(sd, expiration);

 if (next_in_service) {
  bool new_budget_triggers_change =
   bfq_update_parent_budget(next_in_service);

  parent_sched_may_change = !sd->next_in_service ||
   new_budget_triggers_change;
 }

 sd->next_in_service = next_in_service;

 if (!next_in_service)
  return parent_sched_may_change;

 return parent_sched_may_change;
}
