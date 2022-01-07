
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ shift; } ;


 size_t MMU_PAGE_16M ;
 size_t MMU_PAGE_1M ;
 size_t MMU_PAGE_2M ;
 scalar_t__ hpage_shift ;
 TYPE_1__* mmu_psize_defs ;

void hugetlbpage_init_default(void)
{



 if (mmu_psize_defs[MMU_PAGE_16M].shift)
  hpage_shift = mmu_psize_defs[MMU_PAGE_16M].shift;
 else if (mmu_psize_defs[MMU_PAGE_1M].shift)
  hpage_shift = mmu_psize_defs[MMU_PAGE_1M].shift;
 else if (mmu_psize_defs[MMU_PAGE_2M].shift)
  hpage_shift = mmu_psize_defs[MMU_PAGE_2M].shift;
}
