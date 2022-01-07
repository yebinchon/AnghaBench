
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int dummy; } ;
struct bfq_sched_data {struct bfq_entity* in_service_entity; } ;
struct bfq_entity {scalar_t__ tree; int finish; int start; int service; struct bfq_sched_data* sched_data; } ;


 int bfq_active_extract (struct bfq_service_tree*,struct bfq_entity*) ;
 int bfq_calc_finish (struct bfq_entity*,int ) ;
 struct bfq_service_tree* bfq_entity_service_tree (struct bfq_entity*) ;
 int bfq_update_fin_time_enqueue (struct bfq_entity*,struct bfq_service_tree*,int) ;

__attribute__((used)) static void __bfq_requeue_entity(struct bfq_entity *entity)
{
 struct bfq_sched_data *sd = entity->sched_data;
 struct bfq_service_tree *st = bfq_entity_service_tree(entity);

 if (entity == sd->in_service_entity) {
  bfq_calc_finish(entity, entity->service);
  entity->start = entity->finish;
  if (entity->tree)
   bfq_active_extract(st, entity);
 } else {
  bfq_active_extract(st, entity);
 }

 bfq_update_fin_time_enqueue(entity, st, 0);
}
