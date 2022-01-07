
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {int mm; } ;


 unsigned long TASK_SIZE ;
 TYPE_1__* current ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int * pgd_offset (int ,unsigned long) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_present (int ) ;
 unsigned long long pte_val (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache (int *,unsigned long,int *) ;

__attribute__((used)) static int handle_tlbmiss(unsigned long long protection_flags,
     unsigned long address)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 pte_t entry;

 if (is_vmalloc_addr((void *)address)) {
  pgd = pgd_offset_k(address);
 } else {
  if (unlikely(address >= TASK_SIZE || !current->mm))
   return 1;

  pgd = pgd_offset(current->mm, address);
 }

 pud = pud_offset(pgd, address);
 if (pud_none(*pud) || !pud_present(*pud))
  return 1;

 pmd = pmd_offset(pud, address);
 if (pmd_none(*pmd) || !pmd_present(*pmd))
  return 1;

 pte = pte_offset_kernel(pmd, address);
 entry = *pte;
 if (pte_none(entry) || !pte_present(entry))
  return 1;







 if ((pte_val(entry) & protection_flags) != protection_flags)
  return 1;

 update_mmu_cache(((void*)0), address, pte);

 return 0;
}
