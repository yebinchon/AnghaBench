
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int active; } ;
struct bfq_sched_data {struct bfq_entity* in_service_entity; } ;
struct bfq_entity {int * tree; } ;


 int __bfq_activate_entity (struct bfq_entity*,int) ;
 int __bfq_requeue_entity (struct bfq_entity*) ;
 struct bfq_service_tree* bfq_entity_service_tree (struct bfq_entity*) ;

__attribute__((used)) static void __bfq_activate_requeue_entity(struct bfq_entity *entity,
       struct bfq_sched_data *sd,
       bool non_blocking_wait_rq)
{
 struct bfq_service_tree *st = bfq_entity_service_tree(entity);

 if (sd->in_service_entity == entity || entity->tree == &st->active)




  __bfq_requeue_entity(entity);
 else




  __bfq_activate_entity(entity, non_blocking_wait_rq);
}
