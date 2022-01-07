
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int evt2irq (int) ;

int pcibios_map_platform_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
{
 return evt2irq(0xa20) + slot;
}
