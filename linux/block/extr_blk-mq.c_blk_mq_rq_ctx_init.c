
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct request {int tag; unsigned int internal_tag; unsigned int cmd_flags; int ref; int * end_io_data; int * end_io; scalar_t__ timeout; int deadline; scalar_t__ extra_len; scalar_t__ nr_integrity_segments; scalar_t__ nr_phys_segments; scalar_t__ stats_sectors; scalar_t__ io_start_time_ns; scalar_t__ start_time_ns; int alloc_time_ns; int * part; int * rq_disk; int rb_node; int hash; int queuelist; int rq_flags; TYPE_2__* mq_hctx; TYPE_3__* mq_ctx; int q; } ;
struct blk_mq_tags {struct request** static_rqs; } ;
struct blk_mq_alloc_data {int flags; TYPE_3__* ctx; int q; TYPE_2__* hctx; } ;
typedef int req_flags_t ;
struct TYPE_6__ {int * rq_dispatched; } ;
struct TYPE_5__ {int flags; TYPE_1__* tags; int nr_active; } ;
struct TYPE_4__ {struct request** rqs; } ;


 int BLK_MQ_F_TAG_SHARED ;
 int BLK_MQ_REQ_INTERNAL ;
 int BLK_MQ_REQ_PREEMPT ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int RQF_IO_STAT ;
 int RQF_MQ_INFLIGHT ;
 int RQF_PREEMPT ;
 int WRITE_ONCE (int ,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ blk_mq_need_time_stamp (struct request*) ;
 struct blk_mq_tags* blk_mq_tags_from_data (struct blk_mq_alloc_data*) ;
 scalar_t__ blk_queue_io_stat (int ) ;
 scalar_t__ ktime_get_ns () ;
 size_t op_is_sync (unsigned int) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct request *blk_mq_rq_ctx_init(struct blk_mq_alloc_data *data,
  unsigned int tag, unsigned int op, u64 alloc_time_ns)
{
 struct blk_mq_tags *tags = blk_mq_tags_from_data(data);
 struct request *rq = tags->static_rqs[tag];
 req_flags_t rq_flags = 0;

 if (data->flags & BLK_MQ_REQ_INTERNAL) {
  rq->tag = -1;
  rq->internal_tag = tag;
 } else {
  if (data->hctx->flags & BLK_MQ_F_TAG_SHARED) {
   rq_flags = RQF_MQ_INFLIGHT;
   atomic_inc(&data->hctx->nr_active);
  }
  rq->tag = tag;
  rq->internal_tag = -1;
  data->hctx->tags->rqs[rq->tag] = rq;
 }


 rq->q = data->q;
 rq->mq_ctx = data->ctx;
 rq->mq_hctx = data->hctx;
 rq->rq_flags = rq_flags;
 rq->cmd_flags = op;
 if (data->flags & BLK_MQ_REQ_PREEMPT)
  rq->rq_flags |= RQF_PREEMPT;
 if (blk_queue_io_stat(data->q))
  rq->rq_flags |= RQF_IO_STAT;
 INIT_LIST_HEAD(&rq->queuelist);
 INIT_HLIST_NODE(&rq->hash);
 RB_CLEAR_NODE(&rq->rb_node);
 rq->rq_disk = ((void*)0);
 rq->part = ((void*)0);



 if (blk_mq_need_time_stamp(rq))
  rq->start_time_ns = ktime_get_ns();
 else
  rq->start_time_ns = 0;
 rq->io_start_time_ns = 0;
 rq->stats_sectors = 0;
 rq->nr_phys_segments = 0;




 rq->extra_len = 0;
 WRITE_ONCE(rq->deadline, 0);

 rq->timeout = 0;

 rq->end_io = ((void*)0);
 rq->end_io_data = ((void*)0);

 data->ctx->rq_dispatched[op_is_sync(op)]++;
 refcount_set(&rq->ref, 1);
 return rq;
}
