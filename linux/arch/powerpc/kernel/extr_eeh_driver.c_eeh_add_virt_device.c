
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_driver {scalar_t__ err_handler; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int physfn; } ;
struct TYPE_2__ {int vf_index; } ;


 struct pci_dev* eeh_dev_to_pci_dev (struct eeh_dev*) ;
 TYPE_1__* eeh_dev_to_pdn (struct eeh_dev*) ;
 int eeh_edev_warn (struct eeh_dev*,char*) ;
 struct pci_driver* eeh_pcid_get (struct pci_dev*) ;
 int eeh_pcid_put (struct pci_dev*) ;
 int pci_iov_add_virtfn (int ,int ) ;

__attribute__((used)) static void *eeh_add_virt_device(struct eeh_dev *edev)
{
 struct pci_driver *driver;
 struct pci_dev *dev = eeh_dev_to_pci_dev(edev);

 if (!(edev->physfn)) {
  eeh_edev_warn(edev, "Not for VF\n");
  return ((void*)0);
 }

 driver = eeh_pcid_get(dev);
 if (driver) {
  if (driver->err_handler) {
   eeh_pcid_put(dev);
   return ((void*)0);
  }
  eeh_pcid_put(dev);
 }




 return ((void*)0);
}
