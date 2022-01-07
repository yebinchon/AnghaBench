
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suspended; } ;


 TYPE_1__* prcm_irq_setup ;

void omap_prcm_irq_prepare(void)
{
 prcm_irq_setup->suspended = 1;
}
