
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_read_config_dword (struct pci_dev*,int,unsigned int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,unsigned int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static void loongson2e_686b_func5_fixup(struct pci_dev *pdev)
{
 unsigned int val;
 unsigned char c;


 pci_write_config_byte(pdev, PCI_COMMAND,
         PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
         PCI_COMMAND_MASTER);
 pci_read_config_dword(pdev, 0x4, &val);
 pci_write_config_dword(pdev, 0x4, val | 1);


 pci_write_config_byte(pdev, 0x3c, 9);

 pci_read_config_byte(pdev, 0x8, &c);


 pci_write_config_byte(pdev, 0x41, 0xcc);


 pci_write_config_byte(pdev, 0x42, 0x20);


 pci_write_config_word(pdev, 0x2c, 0x1005);
 pci_write_config_word(pdev, 0x2e, 0x4710);
 pci_read_config_dword(pdev, 0x2c, &val);

 pci_write_config_byte(pdev, 0x42, 0x0);
}
