
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct eni_zero {int dma; int addr; } ;
struct eni_dev {struct eni_zero zero; } ;
struct atm_dev {int dummy; } ;


 struct eni_dev* ENI_DEV (struct atm_dev*) ;
 int ENI_ZEROES_SIZE ;
 int atm_dev_deregister (struct atm_dev*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int eni_do_release (struct atm_dev*) ;
 int kfree (struct eni_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct atm_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void eni_remove_one(struct pci_dev *pdev)
{
 struct atm_dev *dev = pci_get_drvdata(pdev);
 struct eni_dev *ed = ENI_DEV(dev);
 struct eni_zero *zero = &ed->zero;

 eni_do_release(dev);
 atm_dev_deregister(dev);
 dma_free_coherent(&pdev->dev, ENI_ZEROES_SIZE, zero->addr, zero->dma);
 kfree(ed);
 pci_disable_device(pdev);
}
