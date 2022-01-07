
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suspended; int suspend_save_flag; int saved_mask; int (* restore_irqen ) (int ) ;} ;


 TYPE_1__* prcm_irq_setup ;
 int stub1 (int ) ;

void omap_prcm_irq_complete(void)
{
 prcm_irq_setup->suspended = 0;


 if (!prcm_irq_setup->suspend_save_flag)
  return;

 prcm_irq_setup->suspend_save_flag = 0;






 prcm_irq_setup->restore_irqen(prcm_irq_setup->saved_mask);
}
