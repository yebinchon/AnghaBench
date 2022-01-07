
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int MRDMODE ;
 int PCI_LATENCY_TIMER ;
 int UDIDETCR0 ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void cmd64x_fixup(struct pci_dev *pdev)
{
 u8 mrdmode;

 pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 64);
 pci_read_config_byte(pdev, MRDMODE, &mrdmode);
 mrdmode &= ~0x30;
 mrdmode |= 0x02;
 pci_write_config_byte(pdev, MRDMODE, mrdmode);





}
