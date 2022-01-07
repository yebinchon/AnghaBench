
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int queuelist; struct blk_mq_hw_ctx* mq_hctx; } ;
struct blk_mq_hw_ctx {int lock; int dispatch; } ;


 int blk_mq_run_hw_queue (struct blk_mq_hw_ctx*,int) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void blk_mq_request_bypass_insert(struct request *rq, bool run_queue)
{
 struct blk_mq_hw_ctx *hctx = rq->mq_hctx;

 spin_lock(&hctx->lock);
 list_add_tail(&rq->queuelist, &hctx->dispatch);
 spin_unlock(&hctx->lock);

 if (run_queue)
  blk_mq_run_hw_queue(hctx, 0);
}
