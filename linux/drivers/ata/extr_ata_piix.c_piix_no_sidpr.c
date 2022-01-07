
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; int device; scalar_t__ subsystem_vendor; int subsystem_device; } ;
struct ata_host {int dev; } ;


 scalar_t__ PCI_VENDOR_ID_INTEL ;
 scalar_t__ PCI_VENDOR_ID_SAMSUNG ;
 int dev_warn (int ,char*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static bool piix_no_sidpr(struct ata_host *host)
{
 struct pci_dev *pdev = to_pci_dev(host->dev);
 if (pdev->vendor == PCI_VENDOR_ID_INTEL && pdev->device == 0x2920 &&
     pdev->subsystem_vendor == PCI_VENDOR_ID_SAMSUNG &&
     pdev->subsystem_device == 0xb049) {
  dev_warn(host->dev,
    "Samsung DB-P70 detected, disabling SIDPR\n");
  return 1;
 }

 return 0;
}
