
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PT_WRITABLE_MASK ;
 int SPTE_MMU_WRITEABLE ;
 int is_writable_pte (int) ;
 int mmu_spte_update (int*,int) ;
 int rmap_printk (char*,int*,int) ;
 scalar_t__ spte_can_locklessly_be_made_writable (int) ;

__attribute__((used)) static bool spte_write_protect(u64 *sptep, bool pt_protect)
{
 u64 spte = *sptep;

 if (!is_writable_pte(spte) &&
       !(pt_protect && spte_can_locklessly_be_made_writable(spte)))
  return 0;

 rmap_printk("rmap_write_protect: spte %p %llx\n", sptep, *sptep);

 if (pt_protect)
  spte &= ~SPTE_MMU_WRITEABLE;
 spte = spte & ~PT_WRITABLE_MASK;

 return mmu_spte_update(sptep, spte);
}
