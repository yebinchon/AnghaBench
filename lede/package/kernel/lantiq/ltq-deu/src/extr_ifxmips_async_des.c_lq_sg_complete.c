
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct des_container {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__* des_queue ;
 int kfree (struct des_container*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lq_sg_complete(struct des_container *des_con)
{
    unsigned long queue_flag;

    spin_lock_irqsave(&des_queue->lock, queue_flag);
    kfree(des_con);
    spin_unlock_irqrestore(&des_queue->lock, queue_flag);
}
