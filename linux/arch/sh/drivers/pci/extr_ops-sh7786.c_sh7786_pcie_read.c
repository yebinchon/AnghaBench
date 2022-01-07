
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; int dev; } ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_ACCESS_READ ;
 int dev_dbg (int *,char*,int ,unsigned int,int,int,unsigned long) ;
 int pci_config_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int sh7786_pcie_config_access (int ,struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int sh7786_pcie_read(struct pci_bus *bus, unsigned int devfn,
       int where, int size, u32 *val)
{
 unsigned long flags;
 int ret;
 u32 data;

        if ((size == 2) && (where & 1))
  return PCIBIOS_BAD_REGISTER_NUMBER;
 else if ((size == 4) && (where & 3))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 raw_spin_lock_irqsave(&pci_config_lock, flags);
 ret = sh7786_pcie_config_access(PCI_ACCESS_READ, bus,
     devfn, where, &data);
 if (ret != PCIBIOS_SUCCESSFUL) {
  *val = 0xffffffff;
  goto out;
 }

 if (size == 1)
  *val = (data >> ((where & 3) << 3)) & 0xff;
 else if (size == 2)
  *val = (data >> ((where & 2) << 3)) & 0xffff;
 else
  *val = data;

 dev_dbg(&bus->dev, "pcie-config-read: bus=%3d devfn=0x%04x "
  "where=0x%04x size=%d val=0x%08lx\n", bus->number,
  devfn, where, size, (unsigned long)*val);

out:
 raw_spin_unlock_irqrestore(&pci_config_lock, flags);
 return ret;
}
