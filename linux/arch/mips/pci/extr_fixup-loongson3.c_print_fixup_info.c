
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; int device; int vendor; int dev; } ;


 int dev_info (int *,char*,int ,int ,int ) ;

__attribute__((used)) static void print_fixup_info(const struct pci_dev *pdev)
{
 dev_info(&pdev->dev, "Device %x:%x, irq %d\n",
   pdev->vendor, pdev->device, pdev->irq);
}
