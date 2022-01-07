
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int revision; int dev; } ;


 int PCI_DEVICE_ID_INTEL_82454NX ;
 int PCI_VENDOR_ID_INTEL ;
 int dev_warn (int *,char*,char*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;

__attribute__((used)) static int piix_check_450nx_errata(struct pci_dev *ata_dev)
{
 struct pci_dev *pdev = ((void*)0);
 u16 cfg;
 int no_piix_dma = 0;

 while ((pdev = pci_get_device(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_82454NX, pdev)) != ((void*)0)) {


  pci_read_config_word(pdev, 0x41, &cfg);

  if (pdev->revision == 0x00)
   no_piix_dma = 1;

  else if (cfg & (1<<14) && pdev->revision < 5)
   no_piix_dma = 2;
 }
 if (no_piix_dma)
  dev_warn(&ata_dev->dev,
    "450NX errata present, disabling IDE DMA%s\n",
    no_piix_dma == 2 ? " - a BIOS update may resolve this"
    : "");

 return no_piix_dma;
}
