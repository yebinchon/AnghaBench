
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {scalar_t__ dispatch_busy; int lock; int dispatch; int run; struct request_queue* queue; } ;
struct TYPE_3__ {scalar_t__ dispatch_request; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int LIST_HEAD (int ) ;
 scalar_t__ blk_mq_dispatch_rq_list (struct request_queue*,int *,int) ;
 int blk_mq_do_dispatch_ctx (struct blk_mq_hw_ctx*) ;
 int blk_mq_do_dispatch_sched (struct blk_mq_hw_ctx*) ;
 int blk_mq_flush_busy_ctxs (struct blk_mq_hw_ctx*,int *) ;
 scalar_t__ blk_mq_hctx_stopped (struct blk_mq_hw_ctx*) ;
 int blk_mq_sched_mark_restart_hctx (struct blk_mq_hw_ctx*) ;
 scalar_t__ blk_queue_quiesced (struct request_queue*) ;
 int list_empty (int *) ;
 int list_empty_careful (int *) ;
 int list_splice_init (int *,int *) ;
 int rq_list ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void blk_mq_sched_dispatch_requests(struct blk_mq_hw_ctx *hctx)
{
 struct request_queue *q = hctx->queue;
 struct elevator_queue *e = q->elevator;
 const bool has_sched_dispatch = e && e->type->ops.dispatch_request;
 LIST_HEAD(rq_list);


 if (unlikely(blk_mq_hctx_stopped(hctx) || blk_queue_quiesced(q)))
  return;

 hctx->run++;





 if (!list_empty_careful(&hctx->dispatch)) {
  spin_lock(&hctx->lock);
  if (!list_empty(&hctx->dispatch))
   list_splice_init(&hctx->dispatch, &rq_list);
  spin_unlock(&hctx->lock);
 }
 if (!list_empty(&rq_list)) {
  blk_mq_sched_mark_restart_hctx(hctx);
  if (blk_mq_dispatch_rq_list(q, &rq_list, 0)) {
   if (has_sched_dispatch)
    blk_mq_do_dispatch_sched(hctx);
   else
    blk_mq_do_dispatch_ctx(hctx);
  }
 } else if (has_sched_dispatch) {
  blk_mq_do_dispatch_sched(hctx);
 } else if (hctx->dispatch_busy) {

  blk_mq_do_dispatch_ctx(hctx);
 } else {
  blk_mq_flush_busy_ctxs(hctx, &rq_list);
  blk_mq_dispatch_rq_list(q, &rq_list, 0);
 }
}
