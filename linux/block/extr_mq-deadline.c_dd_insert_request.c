
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct request* last_merge; TYPE_1__* elevator; } ;
struct request {int queuelist; scalar_t__ fifo_time; } ;
struct deadline_data {int * fifo_list; scalar_t__* fifo_expire; int dispatch; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 int blk_mq_sched_request_inserted (struct request*) ;
 scalar_t__ blk_mq_sched_try_insert_merge (struct request_queue*,struct request*) ;
 int blk_req_zone_write_unlock (struct request*) ;
 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 int deadline_add_rq_rb (struct deadline_data*,struct request*) ;
 int elv_rqhash_add (struct request_queue*,struct request*) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int rq_data_dir (struct request*) ;
 scalar_t__ rq_mergeable (struct request*) ;

__attribute__((used)) static void dd_insert_request(struct blk_mq_hw_ctx *hctx, struct request *rq,
         bool at_head)
{
 struct request_queue *q = hctx->queue;
 struct deadline_data *dd = q->elevator->elevator_data;
 const int data_dir = rq_data_dir(rq);





 blk_req_zone_write_unlock(rq);

 if (blk_mq_sched_try_insert_merge(q, rq))
  return;

 blk_mq_sched_request_inserted(rq);

 if (at_head || blk_rq_is_passthrough(rq)) {
  if (at_head)
   list_add(&rq->queuelist, &dd->dispatch);
  else
   list_add_tail(&rq->queuelist, &dd->dispatch);
 } else {
  deadline_add_rq_rb(dd, rq);

  if (rq_mergeable(rq)) {
   elv_rqhash_add(q, rq);
   if (!q->last_merge)
    q->last_merge = rq;
  }




  rq->fifo_time = jiffies + dd->fifo_expire[data_dir];
  list_add_tail(&rq->queuelist, &dd->fifo_list[data_dir]);
 }
}
