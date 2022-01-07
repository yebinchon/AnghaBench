
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {struct pci_dev* pdev; int isr_name; int devno; } ;
struct pci_dev {int dev; scalar_t__ msi_enabled; int irq; } ;


 char* DRV_NAME ;
 int IRQF_SHARED ;
 unsigned int PCI_IRQ_LEGACY ;
 unsigned int PCI_IRQ_MSI ;
 scalar_t__ SKD_IRQ_LEGACY ;
 scalar_t__ SKD_IRQ_MSIX ;
 int dev_err (int *,char*,int) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct skd_device*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,unsigned int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int skd_acquire_msix (struct skd_device*) ;
 int skd_isr ;
 scalar_t__ skd_isr_type ;
 int snprintf (int ,int,char*,char*,int ) ;

__attribute__((used)) static int skd_acquire_irq(struct skd_device *skdev)
{
 struct pci_dev *pdev = skdev->pdev;
 unsigned int irq_flag = PCI_IRQ_LEGACY;
 int rc;

 if (skd_isr_type == SKD_IRQ_MSIX) {
  rc = skd_acquire_msix(skdev);
  if (!rc)
   return 0;

  dev_err(&skdev->pdev->dev,
   "failed to enable MSI-X, re-trying with MSI %d\n", rc);
 }

 snprintf(skdev->isr_name, sizeof(skdev->isr_name), "%s%d", DRV_NAME,
   skdev->devno);

 if (skd_isr_type != SKD_IRQ_LEGACY)
  irq_flag |= PCI_IRQ_MSI;
 rc = pci_alloc_irq_vectors(pdev, 1, 1, irq_flag);
 if (rc < 0) {
  dev_err(&skdev->pdev->dev,
   "failed to allocate the MSI interrupt %d\n", rc);
  return rc;
 }

 rc = devm_request_irq(&pdev->dev, pdev->irq, skd_isr,
   pdev->msi_enabled ? 0 : IRQF_SHARED,
   skdev->isr_name, skdev);
 if (rc) {
  pci_free_irq_vectors(pdev);
  dev_err(&skdev->pdev->dev, "failed to allocate interrupt %d\n",
   rc);
  return rc;
 }

 return 0;
}
