
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void ns87415_fixup(struct pci_dev *pdev)
{

 pci_write_config_byte(pdev, 0x55, 0xEE);

 pci_write_config_byte(pdev, 0x54, 0xB7);
}
