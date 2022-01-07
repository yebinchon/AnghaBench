
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
typedef int pte_t ;


 int MMU_FTR_HPTE_TABLE ;
 int PG_arch_1 ;
 int VM_EXEC ;
 scalar_t__ WARN_ON (int) ;
 int flush_dcache_icache_page (struct page*) ;
 int is_exec_fault () ;
 struct page* maybe_pte_to_page (int ) ;
 scalar_t__ mmu_has_feature (int ) ;
 scalar_t__ pte_exec (int ) ;
 int pte_mkexec (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static pte_t set_access_flags_filter(pte_t pte, struct vm_area_struct *vma,
         int dirty)
{
 struct page *pg;

 if (mmu_has_feature(MMU_FTR_HPTE_TABLE))
  return pte;






 if (dirty || pte_exec(pte) || !is_exec_fault())
  return pte;
 pg = maybe_pte_to_page(pte);
 if (unlikely(!pg))
  goto bail;


 if (test_bit(PG_arch_1, &pg->flags))
  goto bail;


 flush_dcache_icache_page(pg);
 set_bit(PG_arch_1, &pg->flags);

 bail:
 return pte_mkexec(pte);
}
