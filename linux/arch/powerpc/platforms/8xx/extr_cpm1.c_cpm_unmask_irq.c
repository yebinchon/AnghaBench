
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int cpic_cimr; } ;


 TYPE_1__* cpic_reg ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 int setbits32 (int *,int) ;

__attribute__((used)) static void cpm_unmask_irq(struct irq_data *d)
{
 unsigned int cpm_vec = (unsigned int)irqd_to_hwirq(d);

 setbits32(&cpic_reg->cpic_cimr, (1 << cpm_vec));
}
