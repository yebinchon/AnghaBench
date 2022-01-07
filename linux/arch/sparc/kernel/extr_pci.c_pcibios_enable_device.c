
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int flags; } ;
struct pci_dev {struct resource* resource; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int PCI_NUM_RESOURCES ;
 int pci_info (struct pci_dev*,char*,int ,int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

int pcibios_enable_device(struct pci_dev *dev, int mask)
{
 u16 cmd, oldcmd;
 int i;

 pci_read_config_word(dev, PCI_COMMAND, &cmd);
 oldcmd = cmd;

 for (i = 0; i < PCI_NUM_RESOURCES; i++) {
  struct resource *res = &dev->resource[i];


  if (!(mask & (1<<i)))
   continue;

  if (res->flags & IORESOURCE_IO)
   cmd |= PCI_COMMAND_IO;
  if (res->flags & IORESOURCE_MEM)
   cmd |= PCI_COMMAND_MEMORY;
 }

 if (cmd != oldcmd) {
  pci_info(dev, "enabling device (%04x -> %04x)\n", oldcmd, cmd);
  pci_write_config_word(dev, PCI_COMMAND, cmd);
 }
 return 0;
}
