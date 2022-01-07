
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int class; } ;


 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int fsl_pcie_bus_fixup ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void quirk_fsl_pcie_early(struct pci_dev *dev)
{
 u8 hdr_type;


 if (!pci_is_pcie(dev))
  return;


 pci_read_config_byte(dev, PCI_HEADER_TYPE, &hdr_type);
 if ((hdr_type & 0x7f) != PCI_HEADER_TYPE_BRIDGE)
  return;

 dev->class = PCI_CLASS_BRIDGE_PCI << 8;
 fsl_pcie_bus_fixup = 1;
 return;
}
