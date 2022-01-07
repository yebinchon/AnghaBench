
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct amb_dev {int atm_dev; int irq; int housekeeping; } ;


 int DBG_INFO ;
 int DBG_INIT ;
 int PRINTD (int,char*,struct amb_dev*,int ) ;
 int amb_reset (struct amb_dev*,int ) ;
 int atm_dev_deregister (int ) ;
 int del_timer_sync (int *) ;
 int destroy_queues (struct amb_dev*) ;
 int drain_rx_pools (struct amb_dev*) ;
 int free_irq (int ,struct amb_dev*) ;
 int interrupts_off (struct amb_dev*) ;
 int kfree (struct amb_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct amb_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;

__attribute__((used)) static void amb_remove_one(struct pci_dev *pci_dev)
{
 struct amb_dev *dev;

 dev = pci_get_drvdata(pci_dev);

 PRINTD(DBG_INFO|DBG_INIT, "closing %p (atm_dev = %p)", dev, dev->atm_dev);
 del_timer_sync(&dev->housekeeping);

 drain_rx_pools(dev);
 interrupts_off(dev);
 amb_reset(dev, 0);
 free_irq(dev->irq, dev);
 pci_disable_device(pci_dev);
 destroy_queues(dev);
 atm_dev_deregister(dev->atm_dev);
 kfree(dev);
 pci_release_region(pci_dev, 1);
}
