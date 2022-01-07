
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int vtime; int idle; int active; } ;
struct bfq_sched_data {struct bfq_entity* in_service_entity; } ;
struct bfq_entity {int finish; int * tree; scalar_t__ service; int on_st; struct bfq_sched_data* sched_data; } ;


 int bfq_active_extract (struct bfq_service_tree*,struct bfq_entity*) ;
 int bfq_calc_finish (struct bfq_entity*,scalar_t__) ;
 struct bfq_service_tree* bfq_entity_service_tree (struct bfq_entity*) ;
 int bfq_forget_entity (struct bfq_service_tree*,struct bfq_entity*,int) ;
 int bfq_gt (int ,int ) ;
 int bfq_idle_extract (struct bfq_service_tree*,struct bfq_entity*) ;
 int bfq_idle_insert (struct bfq_service_tree*,struct bfq_entity*) ;

bool __bfq_deactivate_entity(struct bfq_entity *entity, bool ins_into_idle_tree)
{
 struct bfq_sched_data *sd = entity->sched_data;
 struct bfq_service_tree *st;
 bool is_in_service;

 if (!entity->on_st)
  return 0;







 st = bfq_entity_service_tree(entity);
 is_in_service = entity == sd->in_service_entity;

 bfq_calc_finish(entity, entity->service);

 if (is_in_service)
  sd->in_service_entity = ((void*)0);
 else





  entity->service = 0;

 if (entity->tree == &st->active)
  bfq_active_extract(st, entity);
 else if (!is_in_service && entity->tree == &st->idle)
  bfq_idle_extract(st, entity);

 if (!ins_into_idle_tree || !bfq_gt(entity->finish, st->vtime))
  bfq_forget_entity(st, entity, is_in_service);
 else
  bfq_idle_insert(st, entity);

 return 1;
}
