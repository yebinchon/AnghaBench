
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int rq_flags; int tag; int queuelist; int cmd_flags; struct blk_mq_hw_ctx* mq_hctx; struct blk_mq_ctx* mq_ctx; struct request_queue* q; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int lock; } ;
struct TYPE_3__ {int (* insert_requests ) (struct blk_mq_hw_ctx*,int *,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int LIST_HEAD (int ) ;
 int RQF_FLUSH_SEQ ;
 int WARN_ON (int ) ;
 int __blk_mq_insert_request (struct blk_mq_hw_ctx*,struct request*,int) ;
 int blk_insert_flush (struct request*) ;
 int blk_mq_run_hw_queue (struct blk_mq_hw_ctx*,int) ;
 scalar_t__ blk_mq_sched_bypass_insert (struct blk_mq_hw_ctx*,int,struct request*) ;
 int list ;
 int list_add (int *,int *) ;
 scalar_t__ op_is_flush (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct blk_mq_hw_ctx*,int *,int) ;

void blk_mq_sched_insert_request(struct request *rq, bool at_head,
     bool run_queue, bool async)
{
 struct request_queue *q = rq->q;
 struct elevator_queue *e = q->elevator;
 struct blk_mq_ctx *ctx = rq->mq_ctx;
 struct blk_mq_hw_ctx *hctx = rq->mq_hctx;


 if (!(rq->rq_flags & RQF_FLUSH_SEQ) && op_is_flush(rq->cmd_flags)) {
  blk_insert_flush(rq);
  goto run;
 }

 WARN_ON(e && (rq->tag != -1));

 if (blk_mq_sched_bypass_insert(hctx, !!e, rq))
  goto run;

 if (e && e->type->ops.insert_requests) {
  LIST_HEAD(list);

  list_add(&rq->queuelist, &list);
  e->type->ops.insert_requests(hctx, &list, at_head);
 } else {
  spin_lock(&ctx->lock);
  __blk_mq_insert_request(hctx, rq, at_head);
  spin_unlock(&ctx->lock);
 }

run:
 if (run_queue)
  blk_mq_run_hw_queue(hctx, async);
}
