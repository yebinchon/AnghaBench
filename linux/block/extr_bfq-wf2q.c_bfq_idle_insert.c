
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfq_service_tree {int idle; struct bfq_entity* last_idle; struct bfq_entity* first_idle; } ;
struct bfq_queue {TYPE_1__* bfqd; int bfqq_list; } ;
struct bfq_entity {int finish; } ;
struct TYPE_2__ {int idle_list; } ;


 struct bfq_queue* bfq_entity_to_bfqq (struct bfq_entity*) ;
 scalar_t__ bfq_gt (int ,int ) ;
 int bfq_insert (int *,struct bfq_entity*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void bfq_idle_insert(struct bfq_service_tree *st,
       struct bfq_entity *entity)
{
 struct bfq_queue *bfqq = bfq_entity_to_bfqq(entity);
 struct bfq_entity *first_idle = st->first_idle;
 struct bfq_entity *last_idle = st->last_idle;

 if (!first_idle || bfq_gt(first_idle->finish, entity->finish))
  st->first_idle = entity;
 if (!last_idle || bfq_gt(entity->finish, last_idle->finish))
  st->last_idle = entity;

 bfq_insert(&st->idle, entity);

 if (bfqq)
  list_add(&bfqq->bfqq_list, &bfqq->bfqd->idle_list);
}
