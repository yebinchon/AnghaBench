
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int FIX_PCIE_MCFG ;
 unsigned int PCI_MMCFG_BUS_OFFSET (int) ;
 int mmcfg_last_accessed_cpu ;
 scalar_t__ mmcfg_last_accessed_device ;
 int set_fixmap_nocache (int ,scalar_t__) ;
 int smp_processor_id () ;

__attribute__((used)) static void pci_exp_set_dev_base(unsigned int base, int bus, int devfn)
{
 u32 dev_base = base | PCI_MMCFG_BUS_OFFSET(bus) | (devfn << 12);
 int cpu = smp_processor_id();
 if (dev_base != mmcfg_last_accessed_device ||
     cpu != mmcfg_last_accessed_cpu) {
  mmcfg_last_accessed_device = dev_base;
  mmcfg_last_accessed_cpu = cpu;
  set_fixmap_nocache(FIX_PCIE_MCFG, dev_base);
 }
}
