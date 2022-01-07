
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {struct pci_device_id* id_table; } ;
struct pci_device_id {unsigned short vendor; unsigned short device; } ;
struct pci_dev {unsigned short vendor; unsigned short device; struct pci_driver* driver; } ;



__attribute__((used)) static bool match_id(struct pci_dev *pdev, unsigned short vendor, unsigned short device)
{
 struct pci_driver *drv = pdev->driver;
 const struct pci_device_id *id;

 if (pdev->vendor == vendor && pdev->device == device)
  return 1;

 for (id = drv ? drv->id_table : ((void*)0); id && id->vendor; id++)
  if (id->vendor == vendor && id->device == device)
   break;

 return id && id->vendor;
}
