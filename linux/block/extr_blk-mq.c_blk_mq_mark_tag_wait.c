
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int entry; int flags; } ;
typedef TYPE_2__ wait_queue_entry_t ;
struct wait_queue_head {int lock; } ;
struct sbitmap_queue {int ws_active; } ;
struct request {int dummy; } ;
struct blk_mq_hw_ctx {int flags; int dispatch_wait_lock; TYPE_2__ dispatch_wait; TYPE_1__* tags; } ;
struct TYPE_7__ {struct wait_queue_head wait; } ;
struct TYPE_5__ {struct sbitmap_queue bitmap_tags; } ;


 int BLK_MQ_F_TAG_SHARED ;
 int WQ_FLAG_EXCLUSIVE ;
 int __add_wait_queue (struct wait_queue_head*,TYPE_2__*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int blk_mq_get_driver_tag (struct request*) ;
 int blk_mq_sched_mark_restart_hctx (struct blk_mq_hw_ctx*) ;
 TYPE_3__* bt_wait_ptr (struct sbitmap_queue*,struct blk_mq_hw_ctx*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int list_empty_careful (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static bool blk_mq_mark_tag_wait(struct blk_mq_hw_ctx *hctx,
     struct request *rq)
{
 struct sbitmap_queue *sbq = &hctx->tags->bitmap_tags;
 struct wait_queue_head *wq;
 wait_queue_entry_t *wait;
 bool ret;

 if (!(hctx->flags & BLK_MQ_F_TAG_SHARED)) {
  blk_mq_sched_mark_restart_hctx(hctx);
  return blk_mq_get_driver_tag(rq);
 }

 wait = &hctx->dispatch_wait;
 if (!list_empty_careful(&wait->entry))
  return 0;

 wq = &bt_wait_ptr(sbq, hctx)->wait;

 spin_lock_irq(&wq->lock);
 spin_lock(&hctx->dispatch_wait_lock);
 if (!list_empty(&wait->entry)) {
  spin_unlock(&hctx->dispatch_wait_lock);
  spin_unlock_irq(&wq->lock);
  return 0;
 }

 atomic_inc(&sbq->ws_active);
 wait->flags &= ~WQ_FLAG_EXCLUSIVE;
 __add_wait_queue(wq, wait);






 ret = blk_mq_get_driver_tag(rq);
 if (!ret) {
  spin_unlock(&hctx->dispatch_wait_lock);
  spin_unlock_irq(&wq->lock);
  return 0;
 }





 list_del_init(&wait->entry);
 atomic_dec(&sbq->ws_active);
 spin_unlock(&hctx->dispatch_wait_lock);
 spin_unlock_irq(&wq->lock);

 return 1;
}
