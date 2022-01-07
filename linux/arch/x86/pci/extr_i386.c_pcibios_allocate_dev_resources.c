
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct resource {int flags; scalar_t__ start; int end; scalar_t__ parent; } ;
struct pci_dev {int rom_base_reg; int dev; struct resource* resource; } ;
struct pci_check_idx_range {int start; int end; int member_1; int member_0; } ;


 int ARRAY_SIZE (struct pci_check_idx_range*) ;
 int IORESOURCE_IO ;
 int IORESOURCE_PCI_FIXED ;
 int IORESOURCE_ROM_ENABLE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int PCI_IOV_RESOURCES ;
 int PCI_IOV_RESOURCE_END ;
 int PCI_ROM_ADDRESS_ENABLE ;
 size_t PCI_ROM_RESOURCE ;
 int PCI_STD_RESOURCES ;
 int PCI_STD_RESOURCE_END ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*,int,struct resource*) ;
 scalar_t__ pci_claim_resource (struct pci_dev*,int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcibios_save_fw_addr (struct pci_dev*,int,scalar_t__) ;

__attribute__((used)) static void pcibios_allocate_dev_resources(struct pci_dev *dev, int pass)
{
 int idx, disabled, i;
 u16 command;
 struct resource *r;

 struct pci_check_idx_range idx_range[] = {
  { PCI_STD_RESOURCES, PCI_STD_RESOURCE_END },



 };

 pci_read_config_word(dev, PCI_COMMAND, &command);
 for (i = 0; i < ARRAY_SIZE(idx_range); i++)
  for (idx = idx_range[i].start; idx <= idx_range[i].end; idx++) {
   r = &dev->resource[idx];
   if (r->parent)
    continue;
   if (!r->start)
    continue;
   if (r->flags & IORESOURCE_IO)
    disabled = !(command & PCI_COMMAND_IO);
   else
    disabled = !(command & PCI_COMMAND_MEMORY);
   if (pass == disabled) {
    dev_dbg(&dev->dev,
     "BAR %d: reserving %pr (d=%d, p=%d)\n",
     idx, r, disabled, pass);
    if (pci_claim_resource(dev, idx) < 0) {
     if (r->flags & IORESOURCE_PCI_FIXED) {
      dev_info(&dev->dev, "BAR %d %pR is immovable\n",
        idx, r);
     } else {

      pcibios_save_fw_addr(dev,
        idx, r->start);
      r->end -= r->start;
      r->start = 0;
     }
    }
   }
  }
 if (!pass) {
  r = &dev->resource[PCI_ROM_RESOURCE];
  if (r->flags & IORESOURCE_ROM_ENABLE) {


   u32 reg;
   dev_dbg(&dev->dev, "disabling ROM %pR\n", r);
   r->flags &= ~IORESOURCE_ROM_ENABLE;
   pci_read_config_dword(dev, dev->rom_base_reg, &reg);
   pci_write_config_dword(dev, dev->rom_base_reg,
      reg & ~PCI_ROM_ADDRESS_ENABLE);
  }
 }
}
