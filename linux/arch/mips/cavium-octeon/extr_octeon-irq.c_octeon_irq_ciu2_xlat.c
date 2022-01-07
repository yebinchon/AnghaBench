
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;



__attribute__((used)) static int octeon_irq_ciu2_xlat(struct irq_domain *d,
    struct device_node *node,
    const u32 *intspec,
    unsigned int intsize,
    unsigned long *out_hwirq,
    unsigned int *out_type)
{
 unsigned int ciu, bit;

 ciu = intspec[0];
 bit = intspec[1];

 *out_hwirq = (ciu << 6) | bit;
 *out_type = 0;

 return 0;
}
