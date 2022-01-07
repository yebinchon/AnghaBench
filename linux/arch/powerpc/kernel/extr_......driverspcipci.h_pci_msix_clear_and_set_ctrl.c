
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ msix_cap; } ;


 scalar_t__ PCI_MSIX_FLAGS ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static inline void pci_msix_clear_and_set_ctrl(struct pci_dev *dev, u16 clear, u16 set)
{
 u16 ctrl;

 pci_read_config_word(dev, dev->msix_cap + PCI_MSIX_FLAGS, &ctrl);
 ctrl &= ~clear;
 ctrl |= set;
 pci_write_config_word(dev, dev->msix_cap + PCI_MSIX_FLAGS, ctrl);
}
