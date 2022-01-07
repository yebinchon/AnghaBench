
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct blk_mq_hw_ctx* mq_hctx; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef int blk_status_t ;
typedef int blk_qc_t ;


 int __blk_mq_try_issue_directly (struct blk_mq_hw_ctx*,struct request*,int *,int,int) ;
 int hctx_lock (struct blk_mq_hw_ctx*,int*) ;
 int hctx_unlock (struct blk_mq_hw_ctx*,int) ;

blk_status_t blk_mq_request_issue_directly(struct request *rq, bool last)
{
 blk_status_t ret;
 int srcu_idx;
 blk_qc_t unused_cookie;
 struct blk_mq_hw_ctx *hctx = rq->mq_hctx;

 hctx_lock(hctx, &srcu_idx);
 ret = __blk_mq_try_issue_directly(hctx, rq, &unused_cookie, 1, last);
 hctx_unlock(hctx, srcu_idx);

 return ret;
}
