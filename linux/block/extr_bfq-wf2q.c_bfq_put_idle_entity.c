
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfq_service_tree {int dummy; } ;
struct bfq_entity {TYPE_1__* sched_data; } ;
struct TYPE_2__ {struct bfq_entity* in_service_entity; } ;


 int bfq_forget_entity (struct bfq_service_tree*,struct bfq_entity*,int) ;
 int bfq_idle_extract (struct bfq_service_tree*,struct bfq_entity*) ;

void bfq_put_idle_entity(struct bfq_service_tree *st, struct bfq_entity *entity)
{
 bfq_idle_extract(st, entity);
 bfq_forget_entity(st, entity,
     entity == entity->sched_data->in_service_entity);
}
