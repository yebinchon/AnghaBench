
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pcidev; } ;
struct TYPE_3__ {unsigned short device; } ;


 unsigned short const PCI_DEVICE_ID_INTEL_IRONLAKE_D_IG ;
 unsigned short const PCI_DEVICE_ID_INTEL_IRONLAKE_M_IG ;
 scalar_t__ intel_iommu_gfx_mapped ;
 TYPE_2__ intel_private ;

__attribute__((used)) static inline int needs_ilk_vtd_wa(void)
{
 return 0;
}
