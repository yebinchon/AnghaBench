
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int list_empty (int *) ;
 int opal_prd_msg_queue ;
 int opal_prd_msg_queue_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool opal_msg_queue_empty(void)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&opal_prd_msg_queue_lock, flags);
 ret = list_empty(&opal_prd_msg_queue);
 spin_unlock_irqrestore(&opal_prd_msg_queue_lock, flags);

 return ret;
}
