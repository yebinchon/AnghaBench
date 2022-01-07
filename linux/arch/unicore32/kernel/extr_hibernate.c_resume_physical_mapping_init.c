
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int PAGE_KERNEL_EXEC ;
 int PAGE_OFFSET ;
 int PTRS_PER_PGD ;
 int PTRS_PER_PMD ;
 int PTRS_PER_PTE ;
 unsigned long max_low_pfn ;
 int pfn_pte (unsigned long,int ) ;
 int pgd_index (int ) ;
 int * resume_one_md_table_init (int *) ;
 int * resume_one_page_table_init (int *) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static int resume_physical_mapping_init(pgd_t *pgd_base)
{
 unsigned long pfn;
 pgd_t *pgd;
 pmd_t *pmd;
 pte_t *pte;
 int pgd_idx, pmd_idx;

 pgd_idx = pgd_index(PAGE_OFFSET);
 pgd = pgd_base + pgd_idx;
 pfn = 0;

 for (; pgd_idx < PTRS_PER_PGD; pgd++, pgd_idx++) {
  pmd = resume_one_md_table_init(pgd);
  if (!pmd)
   return -ENOMEM;

  if (pfn >= max_low_pfn)
   continue;

  for (pmd_idx = 0; pmd_idx < PTRS_PER_PMD; pmd++, pmd_idx++) {
   pte_t *max_pte;

   if (pfn >= max_low_pfn)
    break;




   pte = resume_one_page_table_init(pmd);
   if (!pte)
    return -ENOMEM;

   max_pte = pte + PTRS_PER_PTE;
   for (; pte < max_pte; pte++, pfn++) {
    if (pfn >= max_low_pfn)
     break;

    set_pte(pte, pfn_pte(pfn, PAGE_KERNEL_EXEC));
   }
  }
 }

 return 0;
}
