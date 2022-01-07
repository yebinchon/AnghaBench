
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_CONF_ADDR ;
 int PCI_CONF_ADDR_EN ;
 int PCI_CONF_BUS (int) ;
 int PCI_CONF_DATA ;
 int PCI_CONF_DEV (int) ;
 int PCI_CONF_FUNC (int) ;
 int PCI_CONF_REG (int) ;
 int orion5x_pci_lock ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int orion5x_pci_hw_rd_conf(int bus, int dev, u32 func,
     u32 where, u32 size, u32 *val)
{
 unsigned long flags;
 spin_lock_irqsave(&orion5x_pci_lock, flags);

 writel(PCI_CONF_BUS(bus) |
  PCI_CONF_DEV(dev) | PCI_CONF_REG(where) |
  PCI_CONF_FUNC(func) | PCI_CONF_ADDR_EN, PCI_CONF_ADDR);

 *val = readl(PCI_CONF_DATA);

 if (size == 1)
  *val = (*val >> (8*(where & 0x3))) & 0xff;
 else if (size == 2)
  *val = (*val >> (8*(where & 0x3))) & 0xffff;

 spin_unlock_irqrestore(&orion5x_pci_lock, flags);

 return PCIBIOS_SUCCESSFUL;
}
