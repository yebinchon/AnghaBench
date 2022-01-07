
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int tag; int rq_flags; int internal_tag; int cmd_flags; TYPE_2__* mq_hctx; int q; } ;
struct blk_mq_alloc_data {TYPE_2__* hctx; int flags; int cmd_flags; int q; } ;
struct TYPE_4__ {TYPE_1__* tags; int nr_active; int sched_tags; } ;
struct TYPE_3__ {struct request** rqs; } ;


 int BLK_MQ_REQ_NOWAIT ;
 int BLK_MQ_REQ_RESERVED ;
 int RQF_MQ_INFLIGHT ;
 int atomic_inc (int *) ;
 int blk_mq_get_tag (struct blk_mq_alloc_data*) ;
 int blk_mq_tag_busy (TYPE_2__*) ;
 scalar_t__ blk_mq_tag_is_reserved (int ,int ) ;

bool blk_mq_get_driver_tag(struct request *rq)
{
 struct blk_mq_alloc_data data = {
  .q = rq->q,
  .hctx = rq->mq_hctx,
  .flags = BLK_MQ_REQ_NOWAIT,
  .cmd_flags = rq->cmd_flags,
 };
 bool shared;

 if (rq->tag != -1)
  goto done;

 if (blk_mq_tag_is_reserved(data.hctx->sched_tags, rq->internal_tag))
  data.flags |= BLK_MQ_REQ_RESERVED;

 shared = blk_mq_tag_busy(data.hctx);
 rq->tag = blk_mq_get_tag(&data);
 if (rq->tag >= 0) {
  if (shared) {
   rq->rq_flags |= RQF_MQ_INFLIGHT;
   atomic_inc(&data.hctx->nr_active);
  }
  data.hctx->tags->rqs[rq->tag] = rq;
 }

done:
 return rq->tag != -1;
}
