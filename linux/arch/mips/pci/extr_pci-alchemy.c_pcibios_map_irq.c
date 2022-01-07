
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {struct alchemy_pci_context* sysdata; } ;
struct alchemy_pci_context {int (* board_map_irq ) (struct pci_dev const*,int ,int ) ;} ;


 int stub1 (struct pci_dev const*,int ,int ) ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 struct alchemy_pci_context *ctx = dev->sysdata;
 if (ctx && ctx->board_map_irq)
  return ctx->board_map_irq(dev, slot, pin);
 return -1;
}
