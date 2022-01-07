
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ irq; scalar_t__ irq_managed; int dev; } ;


 int mp_should_keep_irq (int *) ;
 int mp_unmap_irq (scalar_t__) ;

__attribute__((used)) static void intel_mid_pci_irq_disable(struct pci_dev *dev)
{
 if (!mp_should_keep_irq(&dev->dev) && dev->irq_managed &&
     dev->irq > 0) {
  mp_unmap_irq(dev->irq);
  dev->irq_managed = 0;
 }
}
