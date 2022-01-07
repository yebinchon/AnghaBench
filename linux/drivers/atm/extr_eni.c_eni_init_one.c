
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;
struct eni_zero {int dma; int addr; } ;
struct eni_dev {struct atm_dev* more; int asic; struct pci_dev* pci_dev; struct eni_zero zero; } ;
struct atm_dev {struct eni_dev* dev_data; } ;


 int DEV_LABEL ;
 int DMA_BIT_MASK (int) ;
 int ENI_ZEROES_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atm_dev_deregister (struct atm_dev*) ;
 struct atm_dev* atm_dev_register (int ,int *,int *,int,int *) ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 struct atm_dev* eni_boards ;
 int eni_do_init (struct atm_dev*) ;
 int eni_do_release (struct atm_dev*) ;
 int eni_start (struct atm_dev*) ;
 int kfree (struct eni_dev*) ;
 struct eni_dev* kmalloc (int,int ) ;
 int ops ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct atm_dev*) ;

__attribute__((used)) static int eni_init_one(struct pci_dev *pci_dev,
   const struct pci_device_id *ent)
{
 struct atm_dev *dev;
 struct eni_dev *eni_dev;
 struct eni_zero *zero;
 int rc;

 rc = pci_enable_device(pci_dev);
 if (rc < 0)
  goto out;

 rc = dma_set_mask_and_coherent(&pci_dev->dev, DMA_BIT_MASK(32));
 if (rc < 0)
  goto out;

 rc = -ENOMEM;
 eni_dev = kmalloc(sizeof(struct eni_dev), GFP_KERNEL);
 if (!eni_dev)
  goto err_disable;

 zero = &eni_dev->zero;
 zero->addr = dma_alloc_coherent(&pci_dev->dev,
     ENI_ZEROES_SIZE, &zero->dma, GFP_KERNEL);
 if (!zero->addr)
  goto err_kfree;

 dev = atm_dev_register(DEV_LABEL, &pci_dev->dev, &ops, -1, ((void*)0));
 if (!dev)
  goto err_free_consistent;

 dev->dev_data = eni_dev;
 pci_set_drvdata(pci_dev, dev);
 eni_dev->pci_dev = pci_dev;
 eni_dev->asic = ent->driver_data;

 rc = eni_do_init(dev);
 if (rc < 0)
  goto err_unregister;

 rc = eni_start(dev);
 if (rc < 0)
  goto err_eni_release;

 eni_dev->more = eni_boards;
 eni_boards = dev;
out:
 return rc;

err_eni_release:
 eni_do_release(dev);
err_unregister:
 atm_dev_deregister(dev);
err_free_consistent:
 dma_free_coherent(&pci_dev->dev, ENI_ZEROES_SIZE, zero->addr, zero->dma);
err_kfree:
 kfree(eni_dev);
err_disable:
 pci_disable_device(pci_dev);
 goto out;
}
