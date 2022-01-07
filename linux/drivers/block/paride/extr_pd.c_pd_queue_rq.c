
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pd_unit {int rq_list; } ;
struct blk_mq_queue_data {TYPE_2__* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_5__ {int queuelist; } ;
struct TYPE_4__ {struct pd_unit* queuedata; } ;


 int BLK_STS_OK ;
 int blk_mq_start_request (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int pd_lock ;
 TYPE_2__* pd_req ;
 int run_fsm () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t pd_queue_rq(struct blk_mq_hw_ctx *hctx,
    const struct blk_mq_queue_data *bd)
{
 struct pd_unit *disk = hctx->queue->queuedata;

 spin_lock_irq(&pd_lock);
 if (!pd_req) {
  pd_req = bd->rq;
  blk_mq_start_request(pd_req);
 } else
  list_add_tail(&bd->rq->queuelist, &disk->rq_list);
 spin_unlock_irq(&pd_lock);

 run_fsm();
 return BLK_STS_OK;
}
