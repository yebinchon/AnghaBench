
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {scalar_t__ queue_mode; int * nullb; int flags; } ;
struct nullb {struct nullb_device* dev; int disk; int * tag_set; int __tag_set; int q; int cur_bytes; int bw_timer; int list; int index; } ;


 int LONG_MAX ;
 int NULLB_DEV_FL_THROTTLED ;
 scalar_t__ NULL_Q_MQ ;
 int atomic_long_set (int *,int ) ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int cleanup_queues (struct nullb*) ;
 int del_gendisk (int ) ;
 int hrtimer_cancel (int *) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct nullb*) ;
 int list_del_init (int *) ;
 scalar_t__ null_cache_active (struct nullb*) ;
 int null_free_device_storage (struct nullb_device*,int) ;
 int null_restart_queue_async (struct nullb*) ;
 int nullb_indexes ;
 int put_disk (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void null_del_dev(struct nullb *nullb)
{
 struct nullb_device *dev = nullb->dev;

 ida_simple_remove(&nullb_indexes, nullb->index);

 list_del_init(&nullb->list);

 del_gendisk(nullb->disk);

 if (test_bit(NULLB_DEV_FL_THROTTLED, &nullb->dev->flags)) {
  hrtimer_cancel(&nullb->bw_timer);
  atomic_long_set(&nullb->cur_bytes, LONG_MAX);
  null_restart_queue_async(nullb);
 }

 blk_cleanup_queue(nullb->q);
 if (dev->queue_mode == NULL_Q_MQ &&
     nullb->tag_set == &nullb->__tag_set)
  blk_mq_free_tag_set(nullb->tag_set);
 put_disk(nullb->disk);
 cleanup_queues(nullb);
 if (null_cache_active(nullb))
  null_free_device_storage(nullb->dev, 1);
 kfree(nullb);
 dev->nullb = ((void*)0);
}
