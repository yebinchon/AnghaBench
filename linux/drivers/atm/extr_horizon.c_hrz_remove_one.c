
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_7__ {int iobase; int irq; int atm_dev; int housekeeping; } ;
typedef TYPE_1__ hrz_dev ;


 int DBG_INFO ;
 int HRZ_IO_EXTENT ;
 int PRINTD (int ,char*,TYPE_1__*,int ) ;
 int atm_dev_deregister (int ) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,TYPE_1__*) ;
 int hrz_reset (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 int pci_disable_device (struct pci_dev*) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void hrz_remove_one(struct pci_dev *pci_dev)
{
 hrz_dev *dev;

 dev = pci_get_drvdata(pci_dev);

 PRINTD(DBG_INFO, "closing %p (atm_dev = %p)", dev, dev->atm_dev);
 del_timer_sync(&dev->housekeeping);
 hrz_reset(dev);
 atm_dev_deregister(dev->atm_dev);
 free_irq(dev->irq, dev);
 release_region(dev->iobase, HRZ_IO_EXTENT);
 kfree(dev);

 pci_disable_device(pci_dev);
}
