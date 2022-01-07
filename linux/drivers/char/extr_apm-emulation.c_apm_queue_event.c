
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apm_event_t ;


 int kapmd_queue ;
 int kapmd_queue_lock ;
 int kapmd_wait ;
 int queue_add_event (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

void apm_queue_event(apm_event_t event)
{
 unsigned long flags;

 spin_lock_irqsave(&kapmd_queue_lock, flags);
 queue_add_event(&kapmd_queue, event);
 spin_unlock_irqrestore(&kapmd_queue_lock, flags);

 wake_up_interruptible(&kapmd_wait);
}
