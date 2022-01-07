
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;







 int PCI_LATENCY_TIMER ;
 int ata_pci_bmdma_clear_simplex (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int serverworks_fixup_csb (struct pci_dev*) ;
 int serverworks_fixup_ht1000 (struct pci_dev*) ;
 int serverworks_fixup_osb4 (struct pci_dev*) ;

__attribute__((used)) static int serverworks_fixup(struct pci_dev *pdev)
{
 int rc = 0;


 pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0x40);

 switch (pdev->device) {
 case 128:
  rc = serverworks_fixup_osb4(pdev);
  break;
 case 132:
  ata_pci_bmdma_clear_simplex(pdev);

 case 131:
 case 130:
  rc = serverworks_fixup_csb(pdev);
  break;
 case 129:
  serverworks_fixup_ht1000(pdev);
  break;
 }

 return rc;
}
