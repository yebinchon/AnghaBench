
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ elevator; } ;
struct request {struct request_queue* q; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef int blk_status_t ;
typedef int blk_qc_t ;


 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int __blk_mq_issue_directly (struct blk_mq_hw_ctx*,struct request*,int *,int) ;
 int blk_mq_get_dispatch_budget (struct blk_mq_hw_ctx*) ;
 int blk_mq_get_driver_tag (struct request*) ;
 scalar_t__ blk_mq_hctx_stopped (struct blk_mq_hw_ctx*) ;
 int blk_mq_put_dispatch_budget (struct blk_mq_hw_ctx*) ;
 int blk_mq_request_bypass_insert (struct request*,int) ;
 scalar_t__ blk_queue_quiesced (struct request_queue*) ;

__attribute__((used)) static blk_status_t __blk_mq_try_issue_directly(struct blk_mq_hw_ctx *hctx,
      struct request *rq,
      blk_qc_t *cookie,
      bool bypass_insert, bool last)
{
 struct request_queue *q = rq->q;
 bool run_queue = 1;
 if (blk_mq_hctx_stopped(hctx) || blk_queue_quiesced(q)) {
  run_queue = 0;
  bypass_insert = 0;
  goto insert;
 }

 if (q->elevator && !bypass_insert)
  goto insert;

 if (!blk_mq_get_dispatch_budget(hctx))
  goto insert;

 if (!blk_mq_get_driver_tag(rq)) {
  blk_mq_put_dispatch_budget(hctx);
  goto insert;
 }

 return __blk_mq_issue_directly(hctx, rq, cookie, last);
insert:
 if (bypass_insert)
  return BLK_STS_RESOURCE;

 blk_mq_request_bypass_insert(rq, run_queue);
 return BLK_STS_OK;
}
