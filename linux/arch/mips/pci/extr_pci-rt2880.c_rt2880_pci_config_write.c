
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int RT2880_PCI_REG_CONFIG_ADDR ;
 int RT2880_PCI_REG_CONFIG_DATA ;
 int rt2880_pci_get_cfgaddr (int ,int ,int ,int) ;
 int rt2880_pci_lock ;
 int rt2880_pci_reg_read (int ) ;
 int rt2880_pci_reg_write (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rt2880_pci_config_write(struct pci_bus *bus, unsigned int devfn,
       int where, int size, u32 val)
{
 unsigned long flags;
 u32 address;
 u32 data;

 address = rt2880_pci_get_cfgaddr(bus->number, PCI_SLOT(devfn),
      PCI_FUNC(devfn), where);

 spin_lock_irqsave(&rt2880_pci_lock, flags);
 rt2880_pci_reg_write(address, RT2880_PCI_REG_CONFIG_ADDR);
 data = rt2880_pci_reg_read(RT2880_PCI_REG_CONFIG_DATA);

 switch (size) {
 case 1:
  data = (data & ~(0xff << ((where & 3) << 3))) |
         (val << ((where & 3) << 3));
  break;
 case 2:
  data = (data & ~(0xffff << ((where & 3) << 3))) |
         (val << ((where & 3) << 3));
  break;
 case 4:
  data = val;
  break;
 }

 rt2880_pci_reg_write(data, RT2880_PCI_REG_CONFIG_DATA);
 spin_unlock_irqrestore(&rt2880_pci_lock, flags);

 return PCIBIOS_SUCCESSFUL;
}
