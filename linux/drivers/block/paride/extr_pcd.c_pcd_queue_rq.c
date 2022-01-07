
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcd_unit {int rq_list; } ;
struct blk_mq_queue_data {TYPE_2__* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_5__ {int queuelist; } ;
struct TYPE_4__ {struct pcd_unit* queuedata; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 scalar_t__ READ ;
 int blk_mq_start_request (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int pcd_lock ;
 int pcd_request () ;
 scalar_t__ rq_data_dir (TYPE_2__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t pcd_queue_rq(struct blk_mq_hw_ctx *hctx,
     const struct blk_mq_queue_data *bd)
{
 struct pcd_unit *cd = hctx->queue->queuedata;

 if (rq_data_dir(bd->rq) != READ) {
  blk_mq_start_request(bd->rq);
  return BLK_STS_IOERR;
 }

 spin_lock_irq(&pcd_lock);
 list_add_tail(&bd->rq->queuelist, &cd->rq_list);
 pcd_request();
 spin_unlock_irq(&pcd_lock);

 return BLK_STS_OK;
}
