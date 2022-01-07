
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irq_handler_t ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ stdma_isr ;
 scalar_t__ stdma_locked ;

int stdma_is_locked_by(irq_handler_t handler)
{
 unsigned long flags;
 int result;

 local_irq_save(flags);
 result = stdma_locked && (stdma_isr == handler);
 local_irq_restore(flags);

 return result;
}
