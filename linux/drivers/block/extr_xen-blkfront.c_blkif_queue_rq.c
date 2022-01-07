
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkfront_ring_info {int ring_lock; int dev_info; int ring; } ;
struct blkfront_info {int nr_rings; struct blkfront_ring_info* rinfo; } ;
struct blk_mq_queue_data {int rq; } ;
struct blk_mq_hw_ctx {int queue_num; TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct blkfront_info* queuedata; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BUG_ON (int) ;
 scalar_t__ RING_FULL (int *) ;
 int blk_mq_start_request (int ) ;
 int blk_mq_stop_hw_queue (struct blk_mq_hw_ctx*) ;
 scalar_t__ blkif_queue_request (int ,struct blkfront_ring_info*) ;
 scalar_t__ blkif_request_flush_invalid (int ,int ) ;
 int flush_requests (struct blkfront_ring_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static blk_status_t blkif_queue_rq(struct blk_mq_hw_ctx *hctx,
     const struct blk_mq_queue_data *qd)
{
 unsigned long flags;
 int qid = hctx->queue_num;
 struct blkfront_info *info = hctx->queue->queuedata;
 struct blkfront_ring_info *rinfo = ((void*)0);

 BUG_ON(info->nr_rings <= qid);
 rinfo = &info->rinfo[qid];
 blk_mq_start_request(qd->rq);
 spin_lock_irqsave(&rinfo->ring_lock, flags);
 if (RING_FULL(&rinfo->ring))
  goto out_busy;

 if (blkif_request_flush_invalid(qd->rq, rinfo->dev_info))
  goto out_err;

 if (blkif_queue_request(qd->rq, rinfo))
  goto out_busy;

 flush_requests(rinfo);
 spin_unlock_irqrestore(&rinfo->ring_lock, flags);
 return BLK_STS_OK;

out_err:
 spin_unlock_irqrestore(&rinfo->ring_lock, flags);
 return BLK_STS_IOERR;

out_busy:
 blk_mq_stop_hw_queue(hctx);
 spin_unlock_irqrestore(&rinfo->ring_lock, flags);
 return BLK_STS_DEV_RESOURCE;
}
