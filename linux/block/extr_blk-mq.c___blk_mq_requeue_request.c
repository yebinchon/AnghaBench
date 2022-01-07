
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ dma_drain_size; } ;
struct request {int nr_phys_segments; int rq_flags; int state; struct request_queue* q; } ;


 int MQ_RQ_IDLE ;
 int RQF_TIMED_OUT ;
 int WRITE_ONCE (int ,int ) ;
 int blk_mq_put_driver_tag (struct request*) ;
 scalar_t__ blk_mq_request_started (struct request*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int rq_qos_requeue (struct request_queue*,struct request*) ;
 int trace_block_rq_requeue (struct request_queue*,struct request*) ;

__attribute__((used)) static void __blk_mq_requeue_request(struct request *rq)
{
 struct request_queue *q = rq->q;

 blk_mq_put_driver_tag(rq);

 trace_block_rq_requeue(q, rq);
 rq_qos_requeue(q, rq);

 if (blk_mq_request_started(rq)) {
  WRITE_ONCE(rq->state, MQ_RQ_IDLE);
  rq->rq_flags &= ~RQF_TIMED_OUT;
  if (q->dma_drain_size && blk_rq_bytes(rq))
   rq->nr_phys_segments--;
 }
}
