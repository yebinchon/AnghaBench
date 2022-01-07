
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int icq_list; } ;


 int LIST_HEAD (int ) ;
 int __ioc_clear_queue (int *) ;
 int icq_list ;
 int list_splice_init (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void ioc_clear_queue(struct request_queue *q)
{
 LIST_HEAD(icq_list);

 spin_lock_irq(&q->queue_lock);
 list_splice_init(&q->icq_list, &icq_list);
 spin_unlock_irq(&q->queue_lock);

 __ioc_clear_queue(&icq_list);
}
