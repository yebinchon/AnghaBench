
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int queuelist; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
struct ace_device {int fsm_tasklet; int lock; int rq_list; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct ace_device* queuedata; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int blk_mq_start_request (struct request*) ;
 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static blk_status_t ace_queue_rq(struct blk_mq_hw_ctx *hctx,
     const struct blk_mq_queue_data *bd)
{
 struct ace_device *ace = hctx->queue->queuedata;
 struct request *req = bd->rq;

 if (blk_rq_is_passthrough(req)) {
  blk_mq_start_request(req);
  return BLK_STS_IOERR;
 }

 spin_lock_irq(&ace->lock);
 list_add_tail(&req->queuelist, &ace->rq_list);
 spin_unlock_irq(&ace->lock);

 tasklet_schedule(&ace->fsm_tasklet);
 return BLK_STS_OK;
}
