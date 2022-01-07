
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int state; } ;


 int EEH_PE_ISOLATED ;
 size_t EIO ;
 size_t ENODEV ;
 int eeh_pe_state_clear (TYPE_1__*,int,int) ;
 scalar_t__ eeh_unfreeze_pe (TYPE_1__*) ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t eeh_pe_state_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct eeh_dev *edev = pci_dev_to_eeh_dev(pdev);

 if (!edev || !edev->pe)
  return -ENODEV;


 if (!(edev->pe->state & EEH_PE_ISOLATED))
  return count;

 if (eeh_unfreeze_pe(edev->pe))
  return -EIO;
 eeh_pe_state_clear(edev->pe, EEH_PE_ISOLATED, 1);

 return count;
}
