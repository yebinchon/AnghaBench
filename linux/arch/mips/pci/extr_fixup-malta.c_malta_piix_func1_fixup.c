
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 int PCI_SLOT (int ) ;
 int PIIX4_FUNC1_IDETIM_PRIMARY_HI ;
 unsigned char PIIX4_FUNC1_IDETIM_PRIMARY_HI_IDE_DECODE_EN ;
 int PIIX4_FUNC1_IDETIM_SECONDARY_HI ;
 unsigned char PIIX4_FUNC1_IDETIM_SECONDARY_HI_IDE_DECODE_EN ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int ,unsigned char) ;

__attribute__((used)) static void malta_piix_func1_fixup(struct pci_dev *pdev)
{
 unsigned char reg_val;


 if (PCI_SLOT(pdev->devfn) == 10) {



  pci_read_config_byte(pdev, PIIX4_FUNC1_IDETIM_PRIMARY_HI,
   &reg_val);
  pci_write_config_byte(pdev, PIIX4_FUNC1_IDETIM_PRIMARY_HI,
   reg_val|PIIX4_FUNC1_IDETIM_PRIMARY_HI_IDE_DECODE_EN);
  pci_read_config_byte(pdev, PIIX4_FUNC1_IDETIM_SECONDARY_HI,
   &reg_val);
  pci_write_config_byte(pdev, PIIX4_FUNC1_IDETIM_SECONDARY_HI,
   reg_val|PIIX4_FUNC1_IDETIM_SECONDARY_HI_IDE_DECODE_EN);
 }
}
