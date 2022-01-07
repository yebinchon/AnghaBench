
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int dummy; } ;
struct bfq_sched_data {struct bfq_service_tree* service_tree; } ;
struct bfq_entity {struct bfq_sched_data* sched_data; } ;


 unsigned int bfq_class_idx (struct bfq_entity*) ;

struct bfq_service_tree *bfq_entity_service_tree(struct bfq_entity *entity)
{
 struct bfq_sched_data *sched_data = entity->sched_data;
 unsigned int idx = bfq_class_idx(entity);

 return sched_data->service_tree + idx;
}
