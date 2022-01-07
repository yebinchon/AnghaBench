
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ vendor; int dev; } ;
struct ahci_host_priv {int flags; scalar_t__ mmio; } ;


 int AHCI_HFLAG_NO_MSI ;
 int AHCI_MAX_REMAP ;
 int AHCI_PCI_BAR_STANDARD ;
 scalar_t__ AHCI_REMAP_CAP ;
 scalar_t__ AHCI_VSCAP ;
 scalar_t__ PCI_CLASS_STORAGE_EXPRESS ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 scalar_t__ SZ_512K ;
 scalar_t__ ahci_remap_dcc (int) ;
 int dev_warn (int *,char*,...) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 scalar_t__ readl (scalar_t__) ;
 int readq (scalar_t__) ;

__attribute__((used)) static void ahci_remap_check(struct pci_dev *pdev, int bar,
  struct ahci_host_priv *hpriv)
{
 int i, count = 0;
 u32 cap;




 if (pdev->vendor != PCI_VENDOR_ID_INTEL ||
     pci_resource_len(pdev, bar) < SZ_512K ||
     bar != AHCI_PCI_BAR_STANDARD ||
     !(readl(hpriv->mmio + AHCI_VSCAP) & 1))
  return;

 cap = readq(hpriv->mmio + AHCI_REMAP_CAP);
 for (i = 0; i < AHCI_MAX_REMAP; i++) {
  if ((cap & (1 << i)) == 0)
   continue;
  if (readl(hpriv->mmio + ahci_remap_dcc(i))
    != PCI_CLASS_STORAGE_EXPRESS)
   continue;


  count++;
 }

 if (!count)
  return;

 dev_warn(&pdev->dev, "Found %d remapped NVMe devices.\n", count);
 dev_warn(&pdev->dev,
   "Switch your BIOS from RAID to AHCI mode to use them.\n");





 hpriv->flags |= AHCI_HFLAG_NO_MSI;
}
