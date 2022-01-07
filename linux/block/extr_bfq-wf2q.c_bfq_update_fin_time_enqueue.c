
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {unsigned long vtime; } ;
struct bfq_queue {unsigned long wr_coeff; } ;
struct bfq_entity {unsigned long finish; unsigned long start; int budget; } ;


 struct bfq_service_tree* __bfq_entity_update_weight_prio (struct bfq_service_tree*,struct bfq_entity*,int) ;
 int bfq_active_insert (struct bfq_service_tree*,struct bfq_entity*) ;
 int bfq_calc_finish (struct bfq_entity*,int ) ;
 struct bfq_queue* bfq_entity_to_bfqq (struct bfq_entity*) ;
 scalar_t__ bfq_gt (unsigned long,unsigned long) ;

__attribute__((used)) static void bfq_update_fin_time_enqueue(struct bfq_entity *entity,
     struct bfq_service_tree *st,
     bool backshifted)
{
 struct bfq_queue *bfqq = bfq_entity_to_bfqq(entity);






 st = __bfq_entity_update_weight_prio(st, entity, 1);
 bfq_calc_finish(entity, entity->budget);
 if (backshifted && bfq_gt(st->vtime, entity->finish)) {
  unsigned long delta = st->vtime - entity->finish;

  if (bfqq)
   delta /= bfqq->wr_coeff;

  entity->start += delta;
  entity->finish += delta;
 }

 bfq_active_insert(st, entity);
}
