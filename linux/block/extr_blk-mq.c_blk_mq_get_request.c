
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct request_queue {struct elevator_queue* elevator; } ;
struct TYPE_6__ {int * icq; } ;
struct request {int rq_flags; TYPE_1__ elv; } ;
struct elevator_queue {TYPE_3__* type; } ;
struct blk_mq_alloc_data {int cmd_flags; int flags; TYPE_4__* hctx; int * ctx; struct request_queue* q; } ;
struct bio {int dummy; } ;
struct TYPE_9__ {int queued; } ;
struct TYPE_7__ {int (* prepare_request ) (struct request*,struct bio*) ;int (* limit_depth ) (int,struct blk_mq_alloc_data*) ;} ;
struct TYPE_8__ {TYPE_2__ ops; scalar_t__ icq_cache; } ;


 int BLK_MQ_REQ_INTERNAL ;
 int BLK_MQ_REQ_NOWAIT ;
 int BLK_MQ_REQ_RESERVED ;
 unsigned int BLK_MQ_TAG_FAIL ;
 int REQ_NOWAIT ;
 int RQF_ELVPRIV ;
 int * blk_mq_get_ctx (struct request_queue*) ;
 unsigned int blk_mq_get_tag (struct blk_mq_alloc_data*) ;
 TYPE_4__* blk_mq_map_queue (struct request_queue*,int,int *) ;
 struct request* blk_mq_rq_ctx_init (struct blk_mq_alloc_data*,unsigned int,int,int ) ;
 int blk_mq_sched_assign_ioc (struct request*) ;
 int blk_mq_tag_busy (TYPE_4__*) ;
 int blk_queue_enter_live (struct request_queue*) ;
 int blk_queue_exit (struct request_queue*) ;
 scalar_t__ blk_queue_rq_alloc_time (struct request_queue*) ;
 int ktime_get_ns () ;
 scalar_t__ likely (int) ;
 int op_is_flush (int) ;
 int stub1 (int,struct blk_mq_alloc_data*) ;
 int stub2 (struct request*,struct bio*) ;

__attribute__((used)) static struct request *blk_mq_get_request(struct request_queue *q,
       struct bio *bio,
       struct blk_mq_alloc_data *data)
{
 struct elevator_queue *e = q->elevator;
 struct request *rq;
 unsigned int tag;
 bool clear_ctx_on_error = 0;
 u64 alloc_time_ns = 0;

 blk_queue_enter_live(q);


 if (blk_queue_rq_alloc_time(q))
  alloc_time_ns = ktime_get_ns();

 data->q = q;
 if (likely(!data->ctx)) {
  data->ctx = blk_mq_get_ctx(q);
  clear_ctx_on_error = 1;
 }
 if (likely(!data->hctx))
  data->hctx = blk_mq_map_queue(q, data->cmd_flags,
      data->ctx);
 if (data->cmd_flags & REQ_NOWAIT)
  data->flags |= BLK_MQ_REQ_NOWAIT;

 if (e) {
  data->flags |= BLK_MQ_REQ_INTERNAL;






  if (!op_is_flush(data->cmd_flags) &&
      e->type->ops.limit_depth &&
      !(data->flags & BLK_MQ_REQ_RESERVED))
   e->type->ops.limit_depth(data->cmd_flags, data);
 } else {
  blk_mq_tag_busy(data->hctx);
 }

 tag = blk_mq_get_tag(data);
 if (tag == BLK_MQ_TAG_FAIL) {
  if (clear_ctx_on_error)
   data->ctx = ((void*)0);
  blk_queue_exit(q);
  return ((void*)0);
 }

 rq = blk_mq_rq_ctx_init(data, tag, data->cmd_flags, alloc_time_ns);
 if (!op_is_flush(data->cmd_flags)) {
  rq->elv.icq = ((void*)0);
  if (e && e->type->ops.prepare_request) {
   if (e->type->icq_cache)
    blk_mq_sched_assign_ioc(rq);

   e->type->ops.prepare_request(rq, bio);
   rq->rq_flags |= RQF_ELVPRIV;
  }
 }
 data->hctx->queued++;
 return rq;
}
