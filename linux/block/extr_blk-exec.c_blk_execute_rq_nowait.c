
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int * end_io; struct gendisk* rq_disk; } ;
struct gendisk {int dummy; } ;
typedef int rq_end_io_fn ;


 int WARN_ON (int) ;
 int blk_mq_sched_insert_request (struct request*,int,int,int) ;
 int blk_rq_is_passthrough (struct request*) ;
 int irqs_disabled () ;

void blk_execute_rq_nowait(struct request_queue *q, struct gendisk *bd_disk,
      struct request *rq, int at_head,
      rq_end_io_fn *done)
{
 WARN_ON(irqs_disabled());
 WARN_ON(!blk_rq_is_passthrough(rq));

 rq->rq_disk = bd_disk;
 rq->end_io = done;





 blk_mq_sched_insert_request(rq, at_head, 1, 0);
}
