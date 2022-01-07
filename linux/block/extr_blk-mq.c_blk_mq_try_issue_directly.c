
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct blk_mq_hw_ctx {int flags; } ;
typedef scalar_t__ blk_status_t ;
typedef int blk_qc_t ;


 int BLK_MQ_F_BLOCKING ;
 scalar_t__ BLK_STS_DEV_RESOURCE ;
 scalar_t__ BLK_STS_OK ;
 scalar_t__ BLK_STS_RESOURCE ;
 scalar_t__ __blk_mq_try_issue_directly (struct blk_mq_hw_ctx*,struct request*,int *,int,int) ;
 int blk_mq_end_request (struct request*,scalar_t__) ;
 int blk_mq_request_bypass_insert (struct request*,int) ;
 int hctx_lock (struct blk_mq_hw_ctx*,int*) ;
 int hctx_unlock (struct blk_mq_hw_ctx*,int) ;
 int might_sleep_if (int) ;

__attribute__((used)) static void blk_mq_try_issue_directly(struct blk_mq_hw_ctx *hctx,
  struct request *rq, blk_qc_t *cookie)
{
 blk_status_t ret;
 int srcu_idx;

 might_sleep_if(hctx->flags & BLK_MQ_F_BLOCKING);

 hctx_lock(hctx, &srcu_idx);

 ret = __blk_mq_try_issue_directly(hctx, rq, cookie, 0, 1);
 if (ret == BLK_STS_RESOURCE || ret == BLK_STS_DEV_RESOURCE)
  blk_mq_request_bypass_insert(rq, 1);
 else if (ret != BLK_STS_OK)
  blk_mq_end_request(rq, ret);

 hctx_unlock(hctx, srcu_idx);
}
