
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_dev {TYPE_1__* pdev; int mode; } ;
struct TYPE_2__ {int irq; scalar_t__ msix_enabled; scalar_t__ msi_enabled; } ;


 int EEH_DEV_IRQ_DISABLED ;
 int disable_irq_nosync (int ) ;
 int irq_has_action (int ) ;

__attribute__((used)) static void eeh_disable_irq(struct eeh_dev *edev)
{




 if (edev->pdev->msi_enabled || edev->pdev->msix_enabled)
  return;

 if (!irq_has_action(edev->pdev->irq))
  return;

 edev->mode |= EEH_DEV_IRQ_DISABLED;
 disable_irq_nosync(edev->pdev->irq);
}
