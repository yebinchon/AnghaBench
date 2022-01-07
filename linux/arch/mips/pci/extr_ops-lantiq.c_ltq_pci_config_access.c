
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {unsigned int number; } ;


 unsigned int LTQ_PCI_CFG_BUSNUM_SHF ;
 unsigned int LTQ_PCI_CFG_FUNNUM_SHF ;
 unsigned char PCI_ACCESS_READ ;
 unsigned char PCI_ACCESS_WRITE ;
 int ebu_lock ;
 scalar_t__ ltq_pci_mapped_cfg ;
 int ltq_r32 (int*) ;
 int ltq_w32 (int,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swab32 (int) ;
 int wmb () ;

__attribute__((used)) static int ltq_pci_config_access(unsigned char access_type, struct pci_bus *bus,
 unsigned int devfn, unsigned int where, u32 *data)
{
 unsigned long cfg_base;
 unsigned long flags;
 u32 temp;



 if ((bus->number != 0) || ((devfn & 0xf8) > 0x78)
  || ((devfn & 0xf8) == 0) || ((devfn & 0xf8) == 0x68))
  return 1;

 spin_lock_irqsave(&ebu_lock, flags);

 cfg_base = (unsigned long) ltq_pci_mapped_cfg;
 cfg_base |= (bus->number << LTQ_PCI_CFG_BUSNUM_SHF) | (devfn <<
   LTQ_PCI_CFG_FUNNUM_SHF) | (where & ~0x3);


 if (access_type == PCI_ACCESS_WRITE) {
  ltq_w32(swab32(*data), ((u32 *)cfg_base));
 } else {
  *data = ltq_r32(((u32 *)(cfg_base)));
  *data = swab32(*data);
 }
 wmb();


 cfg_base = (unsigned long) ltq_pci_mapped_cfg;
 cfg_base |= (0x0 << LTQ_PCI_CFG_FUNNUM_SHF) + 4;
 temp = ltq_r32(((u32 *)(cfg_base)));
 temp = swab32(temp);
 cfg_base = (unsigned long) ltq_pci_mapped_cfg;
 cfg_base |= (0x68 << LTQ_PCI_CFG_FUNNUM_SHF) + 4;
 ltq_w32(temp, ((u32 *)cfg_base));

 spin_unlock_irqrestore(&ebu_lock, flags);

 if (((*data) == 0xffffffff) && (access_type == PCI_ACCESS_READ))
  return 1;

 return 0;
}
