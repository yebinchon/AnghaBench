
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_work_queue {int q_wait; int q; int q_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void drbd_init_workqueue(struct drbd_work_queue* wq)
{
 spin_lock_init(&wq->q_lock);
 INIT_LIST_HEAD(&wq->q);
 init_waitqueue_head(&wq->q_wait);
}
