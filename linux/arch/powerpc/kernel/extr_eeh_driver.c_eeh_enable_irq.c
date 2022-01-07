
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_dev {int mode; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int EEH_DEV_IRQ_DISABLED ;
 int enable_irq (int ) ;
 int irq_get_irq_data (int ) ;
 scalar_t__ irqd_irq_disabled (int ) ;

__attribute__((used)) static void eeh_enable_irq(struct eeh_dev *edev)
{
 if ((edev->mode) & EEH_DEV_IRQ_DISABLED) {
  edev->mode &= ~EEH_DEV_IRQ_DISABLED;
  if (irqd_irq_disabled(irq_get_irq_data(edev->pdev->irq)))
   enable_irq(edev->pdev->irq);
 }
}
