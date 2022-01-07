
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int active; } ;
struct bfq_sched_data {scalar_t__ in_service_entity; scalar_t__ bfq_class_idle_last_service; struct bfq_service_tree* service_tree; } ;
struct bfq_entity {int dummy; } ;


 scalar_t__ BFQ_CL_IDLE_TIMEOUT ;
 int BFQ_IOPRIO_CLASSES ;
 int RB_EMPTY_ROOT (int *) ;
 struct bfq_entity* __bfq_lookup_next_entity (struct bfq_service_tree*,int) ;
 scalar_t__ jiffies ;
 scalar_t__ time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static struct bfq_entity *bfq_lookup_next_entity(struct bfq_sched_data *sd,
       bool expiration)
{
 struct bfq_service_tree *st = sd->service_tree;
 struct bfq_service_tree *idle_class_st = st + (BFQ_IOPRIO_CLASSES - 1);
 struct bfq_entity *entity = ((void*)0);
 int class_idx = 0;
 if (time_is_before_jiffies(sd->bfq_class_idle_last_service +
       BFQ_CL_IDLE_TIMEOUT)) {
  if (!RB_EMPTY_ROOT(&idle_class_st->active))
   class_idx = BFQ_IOPRIO_CLASSES - 1;

  sd->bfq_class_idle_last_service = jiffies;
 }





 for (; class_idx < BFQ_IOPRIO_CLASSES; class_idx++) {
  entity = __bfq_lookup_next_entity(st + class_idx,
        sd->in_service_entity &&
        !expiration);

  if (entity)
   break;
 }

 if (!entity)
  return ((void*)0);

 return entity;
}
