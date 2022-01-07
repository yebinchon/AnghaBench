
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct request* last_merge; TYPE_1__* elevator; } ;
struct request {unsigned int cmd_flags; int queuelist; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct bfq_queue {int dummy; } ;
struct bfq_data {int lock; int dispatch; } ;
struct TYPE_2__ {struct bfq_data* elevator_data; } ;


 struct bfq_queue* RQ_BFQQ (struct request*) ;
 int __bfq_insert_request (struct bfq_data*,struct request*) ;
 struct bfq_queue* bfq_init_rq (struct request*) ;
 int bfq_update_insert_stats (struct request_queue*,struct bfq_queue*,int,unsigned int) ;
 int blk_mq_sched_request_inserted (struct request*) ;
 scalar_t__ blk_mq_sched_try_insert_merge (struct request_queue*,struct request*) ;
 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 int elv_rqhash_add (struct request_queue*,struct request*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ rq_mergeable (struct request*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void bfq_insert_request(struct blk_mq_hw_ctx *hctx, struct request *rq,
          bool at_head)
{
 struct request_queue *q = hctx->queue;
 struct bfq_data *bfqd = q->elevator->elevator_data;
 struct bfq_queue *bfqq;
 bool idle_timer_disabled = 0;
 unsigned int cmd_flags;

 spin_lock_irq(&bfqd->lock);
 if (blk_mq_sched_try_insert_merge(q, rq)) {
  spin_unlock_irq(&bfqd->lock);
  return;
 }

 spin_unlock_irq(&bfqd->lock);

 blk_mq_sched_request_inserted(rq);

 spin_lock_irq(&bfqd->lock);
 bfqq = bfq_init_rq(rq);
 if (!bfqq || at_head || blk_rq_is_passthrough(rq)) {
  if (at_head)
   list_add(&rq->queuelist, &bfqd->dispatch);
  else
   list_add_tail(&rq->queuelist, &bfqd->dispatch);
 } else {
  idle_timer_disabled = __bfq_insert_request(bfqd, rq);





  bfqq = RQ_BFQQ(rq);

  if (rq_mergeable(rq)) {
   elv_rqhash_add(q, rq);
   if (!q->last_merge)
    q->last_merge = rq;
  }
 }






 cmd_flags = rq->cmd_flags;

 spin_unlock_irq(&bfqd->lock);

 bfq_update_insert_stats(q, bfqq, idle_timer_disabled,
    cmd_flags);
}
