
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int * msix_entries; struct pci_dev* pdev; } ;
struct pci_dev {int irq; int dev; } ;


 int SKD_MAX_MSIX_COUNT ;
 int devm_free_irq (int *,int ,struct skd_device*) ;
 int kfree (int *) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static void skd_release_irq(struct skd_device *skdev)
{
 struct pci_dev *pdev = skdev->pdev;

 if (skdev->msix_entries) {
  int i;

  for (i = 0; i < SKD_MAX_MSIX_COUNT; i++) {
   devm_free_irq(&pdev->dev, pci_irq_vector(pdev, i),
     skdev);
  }

  kfree(skdev->msix_entries);
  skdev->msix_entries = ((void*)0);
 } else {
  devm_free_irq(&pdev->dev, pdev->irq, skdev);
 }

 pci_free_irq_vectors(pdev);
}
