
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;


 int* gpc_wake_irqs ;

__attribute__((used)) static int imx_gpc_irq_set_wake(struct irq_data *d, unsigned int on)
{
 unsigned int idx = d->hwirq / 32;
 u32 mask;

 mask = 1 << d->hwirq % 32;
 gpc_wake_irqs[idx] = on ? gpc_wake_irqs[idx] | mask :
      gpc_wake_irqs[idx] & ~mask;





 return 0;
}
