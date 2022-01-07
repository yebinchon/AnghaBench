
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_channel {int dummy; } ;
struct pci_bus {struct pci_channel* sysdata; } ;


 int CONFIG_CMD (struct pci_bus*,unsigned int,int) ;
 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 int PCIBIOS_SUCCESSFUL ;
 int SH4_PCIPAR ;
 int SH4_PCIPDR ;
 int pci_config_lock ;
 int pci_read_reg (struct pci_channel*,int ) ;
 int pci_write_reg (struct pci_channel*,int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh4_pci_read(struct pci_bus *bus, unsigned int devfn,
      int where, int size, u32 *val)
{
 struct pci_channel *chan = bus->sysdata;
 unsigned long flags;
 u32 data;





 raw_spin_lock_irqsave(&pci_config_lock, flags);
 pci_write_reg(chan, CONFIG_CMD(bus, devfn, where), SH4_PCIPAR);
 data = pci_read_reg(chan, SH4_PCIPDR);
 raw_spin_unlock_irqrestore(&pci_config_lock, flags);

 switch (size) {
 case 1:
  *val = (data >> ((where & 3) << 3)) & 0xff;
  break;
 case 2:
  *val = (data >> ((where & 2) << 3)) & 0xffff;
  break;
 case 4:
  *val = data;
  break;
 default:
  return PCIBIOS_FUNC_NOT_SUPPORTED;
 }

 return PCIBIOS_SUCCESSFUL;
}
