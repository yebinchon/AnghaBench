
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int get_irq_regs () ;
 int perf_irq (int ) ;

__attribute__((used)) static irqreturn_t cbe_pm_irq(int irq, void *dev_id)
{
 perf_irq(get_irq_regs());
 return IRQ_HANDLED;
}
