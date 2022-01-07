
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_mmcfg_region {int address; } ;


 struct pci_mmcfg_region* pci_mmconfig_lookup (unsigned int,int) ;

__attribute__((used)) static u32 get_base_addr(unsigned int seg, int bus, unsigned devfn)
{
 struct pci_mmcfg_region *cfg = pci_mmconfig_lookup(seg, bus);

 if (cfg)
  return cfg->address;
 return 0;
}
