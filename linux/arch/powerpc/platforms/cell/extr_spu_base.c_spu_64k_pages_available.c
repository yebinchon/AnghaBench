
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ shift; } ;


 size_t MMU_PAGE_64K ;
 TYPE_1__* mmu_psize_defs ;

int spu_64k_pages_available(void)
{
 return mmu_psize_defs[MMU_PAGE_64K].shift != 0;
}
