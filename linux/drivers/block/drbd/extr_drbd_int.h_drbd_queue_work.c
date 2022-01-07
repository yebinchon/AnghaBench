
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_work_queue {int q_wait; int q_lock; int q; } ;
struct drbd_work {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
drbd_queue_work(struct drbd_work_queue *q, struct drbd_work *w)
{
 unsigned long flags;
 spin_lock_irqsave(&q->q_lock, flags);
 list_add_tail(&w->list, &q->q);
 spin_unlock_irqrestore(&q->q_lock, flags);
 wake_up(&q->q_wait);
}
