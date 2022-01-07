
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int root_blkg; int queue_lock; } ;


 int blk_throtl_drain (struct request_queue*) ;
 int lockdep_assert_held (int *) ;

void blkcg_drain_queue(struct request_queue *q)
{
 lockdep_assert_held(&q->queue_lock);





 if (!q->root_blkg)
  return;

 blk_throtl_drain(q);
}
