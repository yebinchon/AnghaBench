
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int * stdma_isr ;
 int * stdma_isr_data ;
 scalar_t__ stdma_locked ;
 int stdma_wait ;
 int wake_up (int *) ;

void stdma_release(void)
{
 unsigned long flags;

 local_irq_save(flags);

 stdma_locked = 0;
 stdma_isr = ((void*)0);
 stdma_isr_data = ((void*)0);
 wake_up(&stdma_wait);

 local_irq_restore(flags);
}
