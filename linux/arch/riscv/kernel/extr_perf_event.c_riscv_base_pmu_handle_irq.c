
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_NONE ;

irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
{
 return IRQ_NONE;
}
