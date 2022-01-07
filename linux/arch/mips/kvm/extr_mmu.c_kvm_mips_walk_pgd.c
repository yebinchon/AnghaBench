
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int BUG () ;
 int clear_page (int *) ;
 scalar_t__ invalid_pte_table ;
 void* mmu_memory_cache_alloc (struct kvm_mmu_memory_cache*) ;
 int pgd_index (unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int pmd_init (unsigned long,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_populate_kernel (int *,int *,int *) ;
 int * pte_offset (int *,unsigned long) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_populate (int *,int *,int *) ;

__attribute__((used)) static pte_t *kvm_mips_walk_pgd(pgd_t *pgd, struct kvm_mmu_memory_cache *cache,
    unsigned long addr)
{
 pud_t *pud;
 pmd_t *pmd;

 pgd += pgd_index(addr);
 if (pgd_none(*pgd)) {

  BUG();
  return ((void*)0);
 }
 pud = pud_offset(pgd, addr);
 if (pud_none(*pud)) {
  pmd_t *new_pmd;

  if (!cache)
   return ((void*)0);
  new_pmd = mmu_memory_cache_alloc(cache);
  pmd_init((unsigned long)new_pmd,
    (unsigned long)invalid_pte_table);
  pud_populate(((void*)0), pud, new_pmd);
 }
 pmd = pmd_offset(pud, addr);
 if (pmd_none(*pmd)) {
  pte_t *new_pte;

  if (!cache)
   return ((void*)0);
  new_pte = mmu_memory_cache_alloc(cache);
  clear_page(new_pte);
  pmd_populate_kernel(((void*)0), pmd, new_pte);
 }
 return pte_offset(pmd, addr);
}
