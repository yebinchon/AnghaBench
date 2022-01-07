
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pg_state {int dummy; } ;
struct TYPE_2__ {int shift; } ;


 unsigned long PAGE_OFFSET ;
 int hpte_find (struct pg_state*,unsigned long,size_t) ;
 unsigned long memblock_end_of_DRAM () ;
 size_t mmu_linear_psize ;
 TYPE_1__* mmu_psize_defs ;

__attribute__((used)) static void walk_linearmapping(struct pg_state *st)
{
 unsigned long addr;





 unsigned long psize = 1 << mmu_psize_defs[mmu_linear_psize].shift;

 for (addr = PAGE_OFFSET; addr < PAGE_OFFSET +
   memblock_end_of_DRAM(); addr += psize)
  hpte_find(st, addr, mmu_linear_psize);
}
