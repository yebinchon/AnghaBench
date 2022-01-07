
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {unsigned int nr_hw_queues; TYPE_1__** queue_hw_ctx; } ;
struct request {int dummy; } ;
struct blk_mq_alloc_data {int flags; unsigned int cmd_flags; int ctx; TYPE_1__* hctx; } ;
typedef int blk_mq_req_flags_t ;
struct TYPE_2__ {int cpumask; } ;


 int BLK_MQ_REQ_NOWAIT ;
 int EINVAL ;
 int EIO ;
 struct request* ERR_PTR (int) ;
 int EWOULDBLOCK ;
 int EXDEV ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __blk_mq_get_ctx (struct request_queue*,unsigned int) ;
 struct request* blk_mq_get_request (struct request_queue*,int *,struct blk_mq_alloc_data*) ;
 int blk_mq_hw_queue_mapped (TYPE_1__*) ;
 int blk_queue_enter (struct request_queue*,int) ;
 int blk_queue_exit (struct request_queue*) ;
 int cpu_online_mask ;
 unsigned int cpumask_first_and (int ,int ) ;

struct request *blk_mq_alloc_request_hctx(struct request_queue *q,
 unsigned int op, blk_mq_req_flags_t flags, unsigned int hctx_idx)
{
 struct blk_mq_alloc_data alloc_data = { .flags = flags, .cmd_flags = op };
 struct request *rq;
 unsigned int cpu;
 int ret;







 if (WARN_ON_ONCE(!(flags & BLK_MQ_REQ_NOWAIT)))
  return ERR_PTR(-EINVAL);

 if (hctx_idx >= q->nr_hw_queues)
  return ERR_PTR(-EIO);

 ret = blk_queue_enter(q, flags);
 if (ret)
  return ERR_PTR(ret);





 alloc_data.hctx = q->queue_hw_ctx[hctx_idx];
 if (!blk_mq_hw_queue_mapped(alloc_data.hctx)) {
  blk_queue_exit(q);
  return ERR_PTR(-EXDEV);
 }
 cpu = cpumask_first_and(alloc_data.hctx->cpumask, cpu_online_mask);
 alloc_data.ctx = __blk_mq_get_ctx(q, cpu);

 rq = blk_mq_get_request(q, ((void*)0), &alloc_data);
 blk_queue_exit(q);

 if (!rq)
  return ERR_PTR(-EWOULDBLOCK);

 return rq;
}
