
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; } ;
struct pci_driver {TYPE_1__ driver; } ;
struct pci_dev {struct pci_driver* driver; } ;


 int try_module_get (int ) ;

__attribute__((used)) static inline struct pci_driver *eeh_pcid_get(struct pci_dev *pdev)
{
 if (!pdev || !pdev->driver)
  return ((void*)0);

 if (!try_module_get(pdev->driver->driver.owner))
  return ((void*)0);

 return pdev->driver;
}
