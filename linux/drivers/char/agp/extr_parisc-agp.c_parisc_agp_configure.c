
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _parisc_agp_info {scalar_t__ lba_cap_offset; scalar_t__ lba_regs; int gart_base; } ;
struct TYPE_2__ {int mode; scalar_t__ capndx; int gart_bus_addr; } ;


 scalar_t__ PCI_AGP_STATUS ;
 TYPE_1__* agp_bridge ;
 struct _parisc_agp_info parisc_agp_info ;
 int readl (scalar_t__) ;

__attribute__((used)) static int
parisc_agp_configure(void)
{
 struct _parisc_agp_info *info = &parisc_agp_info;

 agp_bridge->gart_bus_addr = info->gart_base;
 agp_bridge->capndx = info->lba_cap_offset;
 agp_bridge->mode = readl(info->lba_regs+info->lba_cap_offset+PCI_AGP_STATUS);

 return 0;
}
