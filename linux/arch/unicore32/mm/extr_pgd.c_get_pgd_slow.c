
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int FIRST_KERNEL_PGD_NR ;
 int GFP_KERNEL ;
 int PTRS_PER_PGD ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int clean_dcache_area (int *,int) ;
 int free_pages (unsigned long,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int mm_dec_nr_pmds (struct mm_struct*) ;
 int * pgd_offset_k (int ) ;
 int * pmd_alloc (struct mm_struct*,int *,int ) ;
 int pmd_free (struct mm_struct*,int *) ;
 int * pmd_offset (int *,int ) ;
 int * pte_alloc_map (struct mm_struct*,int *,int ) ;
 int * pte_offset_map (int *,int ) ;
 int pte_unmap (int *) ;
 int set_pte (int *,int ) ;
 int vectors_high () ;

pgd_t *get_pgd_slow(struct mm_struct *mm)
{
 pgd_t *new_pgd, *init_pgd;
 pmd_t *new_pmd, *init_pmd;
 pte_t *new_pte, *init_pte;

 new_pgd = (pgd_t *)__get_free_pages(GFP_KERNEL, 0);
 if (!new_pgd)
  goto no_pgd;

 memset(new_pgd, 0, FIRST_KERNEL_PGD_NR * sizeof(pgd_t));




 init_pgd = pgd_offset_k(0);
 memcpy(new_pgd + FIRST_KERNEL_PGD_NR, init_pgd + FIRST_KERNEL_PGD_NR,
         (PTRS_PER_PGD - FIRST_KERNEL_PGD_NR) * sizeof(pgd_t));

 clean_dcache_area(new_pgd, PTRS_PER_PGD * sizeof(pgd_t));

 if (!vectors_high()) {




  new_pmd = pmd_alloc(mm, (pud_t *)new_pgd, 0);
  if (!new_pmd)
   goto no_pmd;

  new_pte = pte_alloc_map(mm, new_pmd, 0);
  if (!new_pte)
   goto no_pte;

  init_pmd = pmd_offset((pud_t *)init_pgd, 0);
  init_pte = pte_offset_map(init_pmd, 0);
  set_pte(new_pte, *init_pte);
  pte_unmap(init_pte);
  pte_unmap(new_pte);
 }

 return new_pgd;

no_pte:
 pmd_free(mm, new_pmd);
 mm_dec_nr_pmds(mm);
no_pmd:
 free_pages((unsigned long)new_pgd, 0);
no_pgd:
 return ((void*)0);
}
