
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int start; int end; int flags; scalar_t__ parent; } ;
struct pci_dev {int dev; struct resource* resource; struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; struct pci_dev* self; } ;


 int IORESOURCE_MEM ;
 int IORESOURCE_PCI_FIXED ;
 int IORESOURCE_ROM_SHADOW ;
 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_VGA ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 size_t PCI_ROM_RESOURCE ;
 int dev_info (int *,char*,struct resource*) ;
 scalar_t__ is_uv_system () ;
 int pci_disable_rom (struct pci_dev*) ;
 scalar_t__ pci_is_bridge (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int release_resource (struct resource*) ;
 struct pci_dev* vga_default_device () ;

__attribute__((used)) static void pci_fixup_video(struct pci_dev *pdev)
{
 struct pci_dev *bridge;
 struct pci_bus *bus;
 u16 config;
 struct resource *res;

 if (is_uv_system())
  return;



 bus = pdev->bus;
 while (bus) {
  bridge = bus->self;
  if (bridge && (pci_is_bridge(bridge))) {
   pci_read_config_word(bridge, PCI_BRIDGE_CONTROL,
      &config);
   if (!(config & PCI_BRIDGE_CTL_VGA))
    return;
  }
  bus = bus->parent;
 }
 if (!vga_default_device() || pdev == vga_default_device()) {
  pci_read_config_word(pdev, PCI_COMMAND, &config);
  if (config & (PCI_COMMAND_IO | PCI_COMMAND_MEMORY)) {
   res = &pdev->resource[PCI_ROM_RESOURCE];

   pci_disable_rom(pdev);
   if (res->parent)
    release_resource(res);

   res->start = 0xC0000;
   res->end = res->start + 0x20000 - 1;
   res->flags = IORESOURCE_MEM | IORESOURCE_ROM_SHADOW |
         IORESOURCE_PCI_FIXED;
   dev_info(&pdev->dev, "Video device with shadowed ROM at %pR\n",
     res);
  }
 }
}
