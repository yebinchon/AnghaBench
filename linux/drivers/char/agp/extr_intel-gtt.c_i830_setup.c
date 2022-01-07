
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {scalar_t__ gtt_phys_addr; int registers; int pcidev; } ;


 int ENOMEM ;
 int I810_MMADR_BAR ;
 scalar_t__ I810_PTE_BASE ;
 int KB (int) ;
 TYPE_1__ intel_private ;
 int ioremap (scalar_t__,int ) ;
 scalar_t__ pci_resource_start (int ,int ) ;

__attribute__((used)) static int i830_setup(void)
{
 phys_addr_t reg_addr;

 reg_addr = pci_resource_start(intel_private.pcidev, I810_MMADR_BAR);

 intel_private.registers = ioremap(reg_addr, KB(64));
 if (!intel_private.registers)
  return -ENOMEM;

 intel_private.gtt_phys_addr = reg_addr + I810_PTE_BASE;

 return 0;
}
