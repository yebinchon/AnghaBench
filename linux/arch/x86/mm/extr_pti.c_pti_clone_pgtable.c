
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;
typedef enum pti_clone_level { ____Placeholder_pti_clone_level } pti_clone_level ;


 int BUG () ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PMD_MASK ;
 scalar_t__ PMD_SIZE ;
 int PTI_CLONE_PMD ;
 int PTI_CLONE_PTE ;
 unsigned long PUD_MASK ;
 scalar_t__ PUD_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (unsigned long) ;
 int X86_FEATURE_PGE ;
 int _PAGE_GLOBAL ;
 int _PAGE_PRESENT ;
 scalar_t__ boot_cpu_has (int ) ;
 int p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int pmd_flags (int ) ;
 scalar_t__ pmd_large (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_set_flags (int ,int ) ;
 int pte_flags (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_set_flags (int ,int ) ;
 int * pti_user_pagetable_walk_pmd (unsigned long) ;
 int * pti_user_pagetable_walk_pte (unsigned long) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 unsigned long round_up (unsigned long,scalar_t__) ;

__attribute__((used)) static void
pti_clone_pgtable(unsigned long start, unsigned long end,
    enum pti_clone_level level)
{
 unsigned long addr;





 for (addr = start; addr < end;) {
  pte_t *pte, *target_pte;
  pmd_t *pmd, *target_pmd;
  pgd_t *pgd;
  p4d_t *p4d;
  pud_t *pud;


  if (addr < start)
   break;

  pgd = pgd_offset_k(addr);
  if (WARN_ON(pgd_none(*pgd)))
   return;
  p4d = p4d_offset(pgd, addr);
  if (WARN_ON(p4d_none(*p4d)))
   return;

  pud = pud_offset(p4d, addr);
  if (pud_none(*pud)) {
   WARN_ON_ONCE(addr & ~PUD_MASK);
   addr = round_up(addr + 1, PUD_SIZE);
   continue;
  }

  pmd = pmd_offset(pud, addr);
  if (pmd_none(*pmd)) {
   WARN_ON_ONCE(addr & ~PMD_MASK);
   addr = round_up(addr + 1, PMD_SIZE);
   continue;
  }

  if (pmd_large(*pmd) || level == PTI_CLONE_PMD) {
   target_pmd = pti_user_pagetable_walk_pmd(addr);
   if (WARN_ON(!target_pmd))
    return;







   if (WARN_ON(!(pmd_flags(*pmd) & _PAGE_PRESENT)))
    return;
   if (boot_cpu_has(X86_FEATURE_PGE))
    *pmd = pmd_set_flags(*pmd, _PAGE_GLOBAL);






   *target_pmd = *pmd;

   addr += PMD_SIZE;

  } else if (level == PTI_CLONE_PTE) {


   pte = pte_offset_kernel(pmd, addr);
   if (pte_none(*pte)) {
    addr += PAGE_SIZE;
    continue;
   }


   if (WARN_ON(!(pte_flags(*pte) & _PAGE_PRESENT)))
    return;


   target_pte = pti_user_pagetable_walk_pte(addr);
   if (WARN_ON(!target_pte))
    return;


   if (boot_cpu_has(X86_FEATURE_PGE))
    *pte = pte_set_flags(*pte, _PAGE_GLOBAL);


   *target_pte = *pte;

   addr += PAGE_SIZE;

  } else {
   BUG();
  }
 }
}
