
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;
struct pci_dev {int dev; int devfn; int bus; } ;
struct eeh_dev {int pe; } ;
typedef int resource_size_t ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 int PCI_ROM_RESOURCE ;
 int dev_dbg (int *,char*) ;
 int eeh_addr_cache_insert (struct pci_dev*,int ,int ,unsigned long) ;
 struct pci_dn* pci_get_pdn_by_devfn (int ,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_resource_end (struct pci_dev*,int) ;
 unsigned long pci_resource_flags (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static void __eeh_addr_cache_insert_dev(struct pci_dev *dev)
{
 struct pci_dn *pdn;
 struct eeh_dev *edev;
 int i;

 pdn = pci_get_pdn_by_devfn(dev->bus, dev->devfn);
 if (!pdn) {
  pr_warn("PCI: no pci dn found for dev=%s\n",
   pci_name(dev));
  return;
 }

 edev = pdn_to_eeh_dev(pdn);
 if (!edev) {
  pr_warn("PCI: no EEH dev found for %s\n",
   pci_name(dev));
  return;
 }


 if (!edev->pe) {
  dev_dbg(&dev->dev, "EEH: Skip building address cache\n");
  return;
 }





 for (i = 0; i <= PCI_ROM_RESOURCE; i++) {
  resource_size_t start = pci_resource_start(dev,i);
  resource_size_t end = pci_resource_end(dev,i);
  unsigned long flags = pci_resource_flags(dev,i);


  if (0 == (flags & (IORESOURCE_IO | IORESOURCE_MEM)))
   continue;
  if (start == 0 || ~start == 0 || end == 0 || ~end == 0)
    continue;
  eeh_addr_cache_insert(dev, start, end, flags);
 }
}
