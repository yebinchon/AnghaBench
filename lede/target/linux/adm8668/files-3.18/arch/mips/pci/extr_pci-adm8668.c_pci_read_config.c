
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int mkaddr (struct pci_bus*,unsigned int,int) ;
 int pci_lock ;
 int read_cfgdata () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_cfgaddr (int ) ;

__attribute__((used)) static int pci_read_config(struct pci_bus *bus, unsigned int devfn,
    int where, int size, u32 *val)
{
 unsigned long flags;
 u32 data;

 spin_lock_irqsave(&pci_lock, flags);
 write_cfgaddr(mkaddr(bus, devfn, where));
 data = read_cfgdata();

 switch (size) {
 case 1:
  if (where & 1)
   data >>= 8;
  if (where & 2)
   data >>= 16;
  data &= 0xff;
  break;
 case 2:
  if (where & 2)
   data >>= 16;
  data &= 0xffff;
  break;
 }

 *val = data;

 spin_unlock_irqrestore(&pci_lock, flags);

 return PCIBIOS_SUCCESSFUL;
}
