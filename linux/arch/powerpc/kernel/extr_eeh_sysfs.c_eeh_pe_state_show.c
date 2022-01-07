
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* get_state ) (TYPE_1__*,int *) ;} ;
struct TYPE_3__ {int state; } ;


 int ENODEV ;
 TYPE_2__* eeh_ops ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;
 int sprintf (char*,char*,int,int) ;
 int stub1 (TYPE_1__*,int *) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t eeh_pe_state_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct eeh_dev *edev = pci_dev_to_eeh_dev(pdev);
 int state;

 if (!edev || !edev->pe)
  return -ENODEV;

 state = eeh_ops->get_state(edev->pe, ((void*)0));
 return sprintf(buf, "0x%08x 0x%08x\n",
         state, edev->pe->state);
}
