
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {unsigned int needs_freset; } ;
struct eeh_dev {int dummy; } ;


 struct pci_dev* eeh_dev_to_pci_dev (struct eeh_dev*) ;

__attribute__((used)) static void eeh_set_dev_freset(struct eeh_dev *edev, void *flag)
{
 struct pci_dev *dev;
 unsigned int *freset = (unsigned int *)flag;

 dev = eeh_dev_to_pci_dev(edev);
 if (dev)
  *freset |= dev->needs_freset;
}
