
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int mq_hctx; struct request_queue* q; } ;
struct deadline_data {int zone_lock; int * fifo_list; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 size_t WRITE ;
 int blk_mq_sched_mark_restart_hctx (int ) ;
 scalar_t__ blk_queue_is_zoned (struct request_queue*) ;
 int blk_req_zone_write_unlock (struct request*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dd_finish_request(struct request *rq)
{
 struct request_queue *q = rq->q;

 if (blk_queue_is_zoned(q)) {
  struct deadline_data *dd = q->elevator->elevator_data;
  unsigned long flags;

  spin_lock_irqsave(&dd->zone_lock, flags);
  blk_req_zone_write_unlock(rq);
  if (!list_empty(&dd->fifo_list[WRITE]))
   blk_mq_sched_mark_restart_hctx(rq->mq_hctx);
  spin_unlock_irqrestore(&dd->zone_lock, flags);
 }
}
