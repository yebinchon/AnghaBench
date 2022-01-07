
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct he_dev {int dummy; } ;
struct atm_dev {int dummy; } ;


 struct he_dev* HE_DEV (struct atm_dev*) ;
 int atm_dev_deregister (struct atm_dev*) ;
 int he_stop (struct he_dev*) ;
 int kfree (struct he_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct atm_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void he_remove_one(struct pci_dev *pci_dev)
{
 struct atm_dev *atm_dev;
 struct he_dev *he_dev;

 atm_dev = pci_get_drvdata(pci_dev);
 he_dev = HE_DEV(atm_dev);



 he_stop(he_dev);
 atm_dev_deregister(atm_dev);
 kfree(he_dev);

 pci_disable_device(pci_dev);
}
