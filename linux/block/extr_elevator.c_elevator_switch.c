
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int sysfs_lock; } ;
struct elevator_type {int dummy; } ;


 int blk_mq_freeze_queue (struct request_queue*) ;
 int blk_mq_quiesce_queue (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_mq_unquiesce_queue (struct request_queue*) ;
 int elevator_switch_mq (struct request_queue*,struct elevator_type*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int elevator_switch(struct request_queue *q, struct elevator_type *new_e)
{
 int err;

 lockdep_assert_held(&q->sysfs_lock);

 blk_mq_freeze_queue(q);
 blk_mq_quiesce_queue(q);

 err = elevator_switch_mq(q, new_e);

 blk_mq_unquiesce_queue(q);
 blk_mq_unfreeze_queue(q);

 return err;
}
