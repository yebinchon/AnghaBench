
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** priv; int icq; } ;
struct request {int rq_flags; TYPE_1__ elv; int cmd_flags; int q; int rb_node; int io_start_time_ns; int start_time_ns; } ;
struct bfq_queue {struct bfq_data* bfqd; } ;
struct bfq_data {int lock; struct request* waited_rq; } ;


 int RB_EMPTY_NODE (int *) ;
 int RQF_ELVPRIV ;
 int RQF_STARTED ;
 struct bfq_queue* RQ_BFQQ (struct request*) ;
 int bfq_completed_request (struct bfq_queue*,struct bfq_data*) ;
 int bfq_finish_requeue_request_body (struct bfq_queue*) ;
 int bfq_remove_request (int ,struct request*) ;
 int bfq_update_inject_limit (struct bfq_data*,struct bfq_queue*) ;
 int bfqg_stats_update_completion (int ,int ,int ,int ) ;
 int bfqg_stats_update_io_remove (int ,int ) ;
 int bfqq_group (struct bfq_queue*) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void bfq_finish_requeue_request(struct request *rq)
{
 struct bfq_queue *bfqq = RQ_BFQQ(rq);
 struct bfq_data *bfqd;
 if (unlikely(!(rq->rq_flags & RQF_ELVPRIV)))
  return;






 if (!rq->elv.icq || !bfqq)
  return;

 bfqd = bfqq->bfqd;

 if (rq->rq_flags & RQF_STARTED)
  bfqg_stats_update_completion(bfqq_group(bfqq),
          rq->start_time_ns,
          rq->io_start_time_ns,
          rq->cmd_flags);

 if (likely(rq->rq_flags & RQF_STARTED)) {
  unsigned long flags;

  spin_lock_irqsave(&bfqd->lock, flags);

  if (rq == bfqd->waited_rq)
   bfq_update_inject_limit(bfqd, bfqq);

  bfq_completed_request(bfqq, bfqd);
  bfq_finish_requeue_request_body(bfqq);

  spin_unlock_irqrestore(&bfqd->lock, flags);
 } else {
  if (!RB_EMPTY_NODE(&rq->rb_node)) {
   bfq_remove_request(rq->q, rq);
   bfqg_stats_update_io_remove(bfqq_group(bfqq),
          rq->cmd_flags);
  }
  bfq_finish_requeue_request_body(bfqq);
 }
 rq->elv.priv[0] = ((void*)0);
 rq->elv.priv[1] = ((void*)0);
}
