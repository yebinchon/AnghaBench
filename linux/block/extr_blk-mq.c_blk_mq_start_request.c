
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* profile; } ;
struct request_queue {TYPE_2__ integrity; scalar_t__ dma_drain_size; int queue_flags; } ;
struct request {int nr_phys_segments; int state; int rq_flags; int stats_sectors; int io_start_time_ns; struct request_queue* q; } ;
struct TYPE_3__ {int (* prepare_fn ) (struct request*) ;} ;


 scalar_t__ MQ_RQ_IDLE ;
 int MQ_RQ_IN_FLIGHT ;
 int QUEUE_FLAG_STATS ;
 scalar_t__ REQ_OP_WRITE ;
 int RQF_STATS ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int ,int ) ;
 int blk_add_timer (struct request*) ;
 scalar_t__ blk_integrity_rq (struct request*) ;
 scalar_t__ blk_mq_rq_state (struct request*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int ktime_get_ns () ;
 scalar_t__ req_op (struct request*) ;
 int rq_qos_issue (struct request_queue*,struct request*) ;
 int stub1 (struct request*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_block_rq_issue (struct request_queue*,struct request*) ;

void blk_mq_start_request(struct request *rq)
{
 struct request_queue *q = rq->q;

 trace_block_rq_issue(q, rq);

 if (test_bit(QUEUE_FLAG_STATS, &q->queue_flags)) {
  rq->io_start_time_ns = ktime_get_ns();
  rq->stats_sectors = blk_rq_sectors(rq);
  rq->rq_flags |= RQF_STATS;
  rq_qos_issue(q, rq);
 }

 WARN_ON_ONCE(blk_mq_rq_state(rq) != MQ_RQ_IDLE);

 blk_add_timer(rq);
 WRITE_ONCE(rq->state, MQ_RQ_IN_FLIGHT);

 if (q->dma_drain_size && blk_rq_bytes(rq)) {





  rq->nr_phys_segments++;
 }





}
