
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int device; } ;


 int PCI_LATENCY_TIMER ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void atp8xx_fixup(struct pci_dev *pdev)
{
 if (pdev->device == 0x0005)

  pci_write_config_byte(pdev, 0x54, 0);
 else if (pdev->device == 0x0008 || pdev->device == 0x0009) {
  u8 reg;





  pci_read_config_byte(pdev, 0x49, &reg);
  pci_write_config_byte(pdev, 0x49, reg & ~0x30);




  pci_read_config_byte(pdev, PCI_LATENCY_TIMER, &reg);
  if (reg <= 0x80)
   pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0x90);


  pci_read_config_byte(pdev, 0x4a, &reg);
  pci_write_config_byte(pdev, 0x4a, (reg & ~0x01) | 0x80);
 }
}
