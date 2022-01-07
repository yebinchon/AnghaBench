
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blk_mq_queue_data {TYPE_2__* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
struct aoedev {int flags; int lock; int rq_list; int aoeminor; int aoemajor; } ;
typedef int blk_status_t ;
struct TYPE_4__ {int queuelist; } ;
struct TYPE_3__ {struct aoedev* queuedata; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int DEVFL_UP ;
 int aoecmd_work (struct aoedev*) ;
 int blk_mq_start_request (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int pr_info_ratelimited (char*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t aoeblk_queue_rq(struct blk_mq_hw_ctx *hctx,
        const struct blk_mq_queue_data *bd)
{
 struct aoedev *d = hctx->queue->queuedata;

 spin_lock_irq(&d->lock);

 if ((d->flags & DEVFL_UP) == 0) {
  pr_info_ratelimited("aoe: device %ld.%d is not up\n",
   d->aoemajor, d->aoeminor);
  spin_unlock_irq(&d->lock);
  blk_mq_start_request(bd->rq);
  return BLK_STS_IOERR;
 }

 list_add_tail(&bd->rq->queuelist, &d->rq_list);
 aoecmd_work(d);
 spin_unlock_irq(&d->lock);
 return BLK_STS_OK;
}
