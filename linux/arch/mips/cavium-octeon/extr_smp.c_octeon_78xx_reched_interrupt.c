
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int scheduler_ipi () ;

__attribute__((used)) static irqreturn_t octeon_78xx_reched_interrupt(int irq, void *dev_id)
{
 scheduler_ipi();
 return IRQ_HANDLED;
}
