
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int get_irq_regs () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printf (char*) ;
 int xmon (int ) ;

irqreturn_t xmon_irq(int irq, void *d)
{
 unsigned long flags;
 local_irq_save(flags);
 printf("Keyboard interrupt\n");
 xmon(get_irq_regs());
 local_irq_restore(flags);
 return IRQ_HANDLED;
}
