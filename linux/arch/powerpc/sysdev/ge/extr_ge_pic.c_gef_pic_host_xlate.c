
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef unsigned int irq_hw_number_t ;


 unsigned int IRQ_TYPE_LEVEL_HIGH ;

__attribute__((used)) static int gef_pic_host_xlate(struct irq_domain *h, struct device_node *ct,
       const u32 *intspec, unsigned int intsize,
       irq_hw_number_t *out_hwirq, unsigned int *out_flags)
{

 *out_hwirq = intspec[0];
 if (intsize > 1)
  *out_flags = intspec[1];
 else
  *out_flags = IRQ_TYPE_LEVEL_HIGH;

 return 0;
}
