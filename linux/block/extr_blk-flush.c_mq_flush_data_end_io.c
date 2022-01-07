
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ elevator; } ;
struct request {scalar_t__ tag; struct blk_mq_ctx* mq_ctx; struct blk_mq_hw_ctx* mq_hctx; struct request_queue* q; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int dummy; } ;
struct blk_flush_queue {int mq_flush_lock; } ;
typedef int blk_status_t ;


 int REQ_FSEQ_DATA ;
 int WARN_ON (int) ;
 int blk_flush_complete_seq (struct request*,struct blk_flush_queue*,int ,int ) ;
 struct blk_flush_queue* blk_get_flush_queue (struct request_queue*,struct blk_mq_ctx*) ;
 int blk_mq_put_driver_tag (struct request*) ;
 int blk_mq_sched_restart (struct blk_mq_hw_ctx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mq_flush_data_end_io(struct request *rq, blk_status_t error)
{
 struct request_queue *q = rq->q;
 struct blk_mq_hw_ctx *hctx = rq->mq_hctx;
 struct blk_mq_ctx *ctx = rq->mq_ctx;
 unsigned long flags;
 struct blk_flush_queue *fq = blk_get_flush_queue(q, ctx);

 if (q->elevator) {
  WARN_ON(rq->tag < 0);
  blk_mq_put_driver_tag(rq);
 }





 spin_lock_irqsave(&fq->mq_flush_lock, flags);
 blk_flush_complete_seq(rq, fq, REQ_FSEQ_DATA, error);
 spin_unlock_irqrestore(&fq->mq_flush_lock, flags);

 blk_mq_sched_restart(hctx);
}
