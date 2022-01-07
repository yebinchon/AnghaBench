
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int q_usage_counter; int sysfs_lock; scalar_t__ elevator; TYPE_1__* backing_dev_info; } ;
struct TYPE_2__ {int laptop_mode_wb_timer; } ;


 int QUEUE_FLAG_DEAD ;
 int QUEUE_FLAG_DYING ;
 int QUEUE_FLAG_NOMERGES ;
 int QUEUE_FLAG_NOXMERGES ;
 int blk_flush_integrity () ;
 int blk_freeze_queue (struct request_queue*) ;
 int blk_mq_exit_queue (struct request_queue*) ;
 int blk_mq_sched_free_requests (struct request_queue*) ;
 int blk_put_queue (struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int blk_set_queue_dying (struct request_queue*) ;
 int blk_sync_queue (struct request_queue*) ;
 int del_timer_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_exit (int *) ;
 scalar_t__ queue_is_mq (struct request_queue*) ;
 int rq_qos_exit (struct request_queue*) ;

void blk_cleanup_queue(struct request_queue *q)
{

 mutex_lock(&q->sysfs_lock);
 blk_set_queue_dying(q);

 blk_queue_flag_set(QUEUE_FLAG_NOMERGES, q);
 blk_queue_flag_set(QUEUE_FLAG_NOXMERGES, q);
 blk_queue_flag_set(QUEUE_FLAG_DYING, q);
 mutex_unlock(&q->sysfs_lock);






 blk_freeze_queue(q);

 rq_qos_exit(q);

 blk_queue_flag_set(QUEUE_FLAG_DEAD, q);


 blk_flush_integrity();


 del_timer_sync(&q->backing_dev_info->laptop_mode_wb_timer);
 blk_sync_queue(q);

 if (queue_is_mq(q))
  blk_mq_exit_queue(q);
 mutex_lock(&q->sysfs_lock);
 if (q->elevator)
  blk_mq_sched_free_requests(q);
 mutex_unlock(&q->sysfs_lock);

 percpu_ref_exit(&q->q_usage_counter);


 blk_put_queue(q);
}
