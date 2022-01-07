
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int new_ioprio_class; int ioprio_class; int new_ioprio; int ioprio; } ;
struct bfq_group {int sched_data; } ;
struct bfq_entity {int * sched_data; int new_weight; int orig_weight; int weight; } ;


 struct bfq_queue* bfq_entity_to_bfqq (struct bfq_entity*) ;

void bfq_init_entity(struct bfq_entity *entity, struct bfq_group *bfqg)
{
 struct bfq_queue *bfqq = bfq_entity_to_bfqq(entity);

 entity->weight = entity->new_weight;
 entity->orig_weight = entity->new_weight;
 if (bfqq) {
  bfqq->ioprio = bfqq->new_ioprio;
  bfqq->ioprio_class = bfqq->new_ioprio_class;
 }
 entity->sched_data = &bfqg->sched_data;
}
