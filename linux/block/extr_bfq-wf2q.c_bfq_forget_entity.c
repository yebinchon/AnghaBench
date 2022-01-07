
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_service_tree {int wsum; } ;
struct bfq_queue {int dummy; } ;
struct bfq_entity {int on_st; scalar_t__ weight; } ;


 struct bfq_queue* bfq_entity_to_bfqq (struct bfq_entity*) ;
 int bfq_put_queue (struct bfq_queue*) ;

__attribute__((used)) static void bfq_forget_entity(struct bfq_service_tree *st,
         struct bfq_entity *entity,
         bool is_in_service)
{
 struct bfq_queue *bfqq = bfq_entity_to_bfqq(entity);

 entity->on_st = 0;
 st->wsum -= entity->weight;
 if (bfqq && !is_in_service)
  bfq_put_queue(bfqq);
}
