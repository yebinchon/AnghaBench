
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int DBG (char*,int,...) ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int mkaddr (struct pci_bus*,unsigned int,int) ;
 int pci_lock ;
 int read_cfgdata () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_cfgaddr (int ) ;

__attribute__((used)) static int pci_config_read(struct pci_bus *bus, unsigned int devfn, int where,
  int size, u32 *val)
{
 unsigned long flags;
 u32 data;

 spin_lock_irqsave(&pci_lock, flags);

 write_cfgaddr(mkaddr(bus, devfn, where));
 data = read_cfgdata();

 DBG("PCI: cfg_read  %02u.%02u.%01u/%02X:%01d, cfg:0x%08X",
  bus->number, PCI_SLOT(devfn), PCI_FUNC(devfn),
  where, size, data);

 switch (size) {
 case 1:
  if (where & 1)
   data >>= 8;
  if (where & 2)
   data >>= 16;
  data &= 0xFF;
  break;
 case 2:
  if (where & 2)
   data >>= 16;
  data &= 0xFFFF;
  break;
 }

 *val = data;
 DBG(", 0x%08X returned\n", data);

 spin_unlock_irqrestore(&pci_lock, flags);

 return PCIBIOS_SUCCESSFUL;
}
