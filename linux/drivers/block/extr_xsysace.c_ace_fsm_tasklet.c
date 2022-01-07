
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ace_device {int fsm_continue_flag; int lock; } ;


 int ace_fsm_dostate (struct ace_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ace_fsm_tasklet(unsigned long data)
{
 struct ace_device *ace = (void *)data;
 unsigned long flags;

 spin_lock_irqsave(&ace->lock, flags);


 ace->fsm_continue_flag = 1;
 while (ace->fsm_continue_flag)
  ace_fsm_dostate(ace);

 spin_unlock_irqrestore(&ace->lock, flags);
}
