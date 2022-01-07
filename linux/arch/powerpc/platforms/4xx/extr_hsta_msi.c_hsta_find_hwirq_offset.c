
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_count; int* irq_map; } ;


 int EINVAL ;
 TYPE_1__ ppc4xx_hsta_msi ;

__attribute__((used)) static int hsta_find_hwirq_offset(int hwirq)
{
 int irq;


 for (irq = 0; irq < ppc4xx_hsta_msi.irq_count; irq++)
  if (ppc4xx_hsta_msi.irq_map[irq] == hwirq)
   return irq;

 return -EINVAL;
}
