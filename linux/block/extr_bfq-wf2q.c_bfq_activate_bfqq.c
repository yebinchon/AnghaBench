
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_entity {int dummy; } ;
struct bfq_queue {struct bfq_entity entity; } ;
struct bfq_data {int dummy; } ;


 int bfq_activate_requeue_entity (struct bfq_entity*,int ,int,int) ;
 int bfq_bfqq_non_blocking_wait_rq (struct bfq_queue*) ;
 int bfq_clear_bfqq_non_blocking_wait_rq (struct bfq_queue*) ;

void bfq_activate_bfqq(struct bfq_data *bfqd, struct bfq_queue *bfqq)
{
 struct bfq_entity *entity = &bfqq->entity;

 bfq_activate_requeue_entity(entity, bfq_bfqq_non_blocking_wait_rq(bfqq),
        0, 0);
 bfq_clear_bfqq_non_blocking_wait_rq(bfqq);
}
