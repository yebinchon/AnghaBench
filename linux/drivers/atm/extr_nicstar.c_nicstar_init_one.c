
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 int ** cards ;
 unsigned int ns_init_card (int,struct pci_dev*) ;

__attribute__((used)) static int nicstar_init_one(struct pci_dev *pcidev,
       const struct pci_device_id *ent)
{
 static int index = -1;
 unsigned int error;

 index++;
 cards[index] = ((void*)0);

 error = ns_init_card(index, pcidev);
 if (error) {
  cards[index--] = ((void*)0);
  goto err_out;
 }

 return 0;
err_out:
 return -ENODEV;
}
