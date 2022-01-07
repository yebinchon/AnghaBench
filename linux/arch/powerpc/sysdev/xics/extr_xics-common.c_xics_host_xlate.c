
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;


 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;

__attribute__((used)) static int xics_host_xlate(struct irq_domain *h, struct device_node *ct,
      const u32 *intspec, unsigned int intsize,
      irq_hw_number_t *out_hwirq, unsigned int *out_flags)

{
 *out_hwirq = intspec[0];





 if (intsize > 1) {
  if (intspec[1] & 1)
   *out_flags = IRQ_TYPE_LEVEL_LOW;
  else
   *out_flags = IRQ_TYPE_EDGE_RISING;
 } else
  *out_flags = IRQ_TYPE_LEVEL_LOW;

 return 0;
}
