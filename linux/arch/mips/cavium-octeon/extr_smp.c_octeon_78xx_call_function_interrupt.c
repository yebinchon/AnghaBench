
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int generic_smp_call_function_interrupt () ;

__attribute__((used)) static irqreturn_t octeon_78xx_call_function_interrupt(int irq, void *dev_id)
{
 generic_smp_call_function_interrupt();
 return IRQ_HANDLED;
}
