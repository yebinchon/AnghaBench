
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* mq_ops; } ;
struct request {struct request_queue* q; } ;
struct blk_mq_queue_data {int last; struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef int blk_status_t ;
typedef int blk_qc_t ;
struct TYPE_2__ {int (* queue_rq ) (struct blk_mq_hw_ctx*,struct blk_mq_queue_data*) ;} ;


 int BLK_QC_T_NONE ;



 int __blk_mq_requeue_request (struct request*) ;
 int blk_mq_update_dispatch_busy (struct blk_mq_hw_ctx*,int) ;
 int request_to_qc_t (struct blk_mq_hw_ctx*,struct request*) ;
 int stub1 (struct blk_mq_hw_ctx*,struct blk_mq_queue_data*) ;

__attribute__((used)) static blk_status_t __blk_mq_issue_directly(struct blk_mq_hw_ctx *hctx,
         struct request *rq,
         blk_qc_t *cookie, bool last)
{
 struct request_queue *q = rq->q;
 struct blk_mq_queue_data bd = {
  .rq = rq,
  .last = last,
 };
 blk_qc_t new_cookie;
 blk_status_t ret;

 new_cookie = request_to_qc_t(hctx, rq);






 ret = q->mq_ops->queue_rq(hctx, &bd);
 switch (ret) {
 case 129:
  blk_mq_update_dispatch_busy(hctx, 0);
  *cookie = new_cookie;
  break;
 case 128:
 case 130:
  blk_mq_update_dispatch_busy(hctx, 1);
  __blk_mq_requeue_request(rq);
  break;
 default:
  blk_mq_update_dispatch_busy(hctx, 0);
  *cookie = BLK_QC_T_NONE;
  break;
 }

 return ret;
}
