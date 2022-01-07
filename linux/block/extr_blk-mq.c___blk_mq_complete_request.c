
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int nr_hw_queues; TYPE_1__* mq_ops; int queue_flags; } ;
struct TYPE_4__ {scalar_t__ flags; struct request* info; int func; } ;
struct request {int cmd_flags; TYPE_2__ csd; int state; struct request_queue* q; struct blk_mq_ctx* mq_ctx; } ;
struct blk_mq_ctx {int cpu; } ;
struct TYPE_3__ {int (* complete ) (struct request*) ;} ;


 int MQ_RQ_COMPLETE ;
 int QUEUE_FLAG_SAME_COMP ;
 int QUEUE_FLAG_SAME_FORCE ;
 int REQ_HIPRI ;
 int WRITE_ONCE (int ,int ) ;
 int __blk_complete_request (struct request*) ;
 int __blk_mq_complete_request_remote ;
 scalar_t__ cpu_online (int) ;
 int cpus_share_cache (int,int) ;
 int get_cpu () ;
 int put_cpu () ;
 int smp_call_function_single_async (int,TYPE_2__*) ;
 int stub1 (struct request*) ;
 int stub2 (struct request*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void __blk_mq_complete_request(struct request *rq)
{
 struct blk_mq_ctx *ctx = rq->mq_ctx;
 struct request_queue *q = rq->q;
 bool shared = 0;
 int cpu;

 WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
 if (q->nr_hw_queues == 1) {
  __blk_complete_request(rq);
  return;
 }





 if ((rq->cmd_flags & REQ_HIPRI) ||
     !test_bit(QUEUE_FLAG_SAME_COMP, &q->queue_flags)) {
  q->mq_ops->complete(rq);
  return;
 }

 cpu = get_cpu();
 if (!test_bit(QUEUE_FLAG_SAME_FORCE, &q->queue_flags))
  shared = cpus_share_cache(cpu, ctx->cpu);

 if (cpu != ctx->cpu && !shared && cpu_online(ctx->cpu)) {
  rq->csd.func = __blk_mq_complete_request_remote;
  rq->csd.info = rq;
  rq->csd.flags = 0;
  smp_call_function_single_async(ctx->cpu, &rq->csd);
 } else {
  q->mq_ops->complete(rq);
 }
 put_cpu();
}
