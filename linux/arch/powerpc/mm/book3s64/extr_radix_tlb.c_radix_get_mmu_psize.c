
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long shift; } ;


 size_t MMU_PAGE_1G ;
 size_t MMU_PAGE_2M ;
 TYPE_1__* mmu_psize_defs ;
 size_t mmu_virtual_psize ;

__attribute__((used)) static int radix_get_mmu_psize(int page_size)
{
 int psize;

 if (page_size == (1UL << mmu_psize_defs[mmu_virtual_psize].shift))
  psize = mmu_virtual_psize;
 else if (page_size == (1UL << mmu_psize_defs[MMU_PAGE_2M].shift))
  psize = MMU_PAGE_2M;
 else if (page_size == (1UL << mmu_psize_defs[MMU_PAGE_1G].shift))
  psize = MMU_PAGE_1G;
 else
  return -1;
 return psize;
}
