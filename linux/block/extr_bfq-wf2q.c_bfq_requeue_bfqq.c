
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_entity {int dummy; } ;
struct bfq_queue {struct bfq_entity entity; } ;
struct bfq_data {struct bfq_queue* in_service_queue; } ;


 int bfq_activate_requeue_entity (struct bfq_entity*,int,int,int) ;

void bfq_requeue_bfqq(struct bfq_data *bfqd, struct bfq_queue *bfqq,
        bool expiration)
{
 struct bfq_entity *entity = &bfqq->entity;

 bfq_activate_requeue_entity(entity, 0,
        bfqq == bfqd->in_service_queue, expiration);
}
