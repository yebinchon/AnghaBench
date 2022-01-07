
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_cfg {int dummy; } ;


 int irq_get_irq_data (unsigned int) ;
 struct irq_cfg* irqd_cfg (int ) ;

struct irq_cfg *irq_cfg(unsigned int irq)
{
 return irqd_cfg(irq_get_irq_data(irq));
}
