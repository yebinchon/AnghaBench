
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pf_unit {int rq_list; } ;
struct blk_mq_queue_data {TYPE_2__* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_4__ {int queuelist; } ;
struct TYPE_3__ {struct pf_unit* queuedata; } ;


 int BLK_STS_OK ;
 int list_add_tail (int *,int *) ;
 int pf_request () ;
 int pf_spin_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t pf_queue_rq(struct blk_mq_hw_ctx *hctx,
    const struct blk_mq_queue_data *bd)
{
 struct pf_unit *pf = hctx->queue->queuedata;

 spin_lock_irq(&pf_spin_lock);
 list_add_tail(&bd->rq->queuelist, &pf->rq_list);
 pf_request();
 spin_unlock_irq(&pf_spin_lock);

 return BLK_STS_OK;
}
