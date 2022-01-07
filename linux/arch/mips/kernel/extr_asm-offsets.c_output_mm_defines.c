
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int BLANK () ;
 int COMMENT (char*) ;
 int DEFINE (int ,int) ;
 int MM_CONTEXT ;
 int MM_PGD ;
 int MM_USERS ;
 int OFFSET (int ,int ,int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PGDIR_SHIFT ;
 int PGD_ORDER ;
 int PGD_T_LOG2 ;
 int PMD_ORDER ;
 int PMD_SHIFT ;
 int PMD_T_LOG2 ;
 int PTE_ORDER ;
 int PTE_T_LOG2 ;
 int PTRS_PER_PGD ;
 int PTRS_PER_PMD ;
 int PTRS_PER_PTE ;
 int STRUCT_PAGE_SIZE ;
 int _PAGE_SHIFT ;
 int _PAGE_SIZE ;
 int _PGDIR_SHIFT ;
 int _PGD_ORDER ;
 int _PGD_T_LOG2 ;
 int _PGD_T_SIZE ;
 int _PMD_ORDER ;
 int _PMD_SHIFT ;
 int _PMD_T_LOG2 ;
 int _PMD_T_SIZE ;
 int _PTE_ORDER ;
 int _PTE_T_LOG2 ;
 int _PTE_T_SIZE ;
 int _PTRS_PER_PGD ;
 int _PTRS_PER_PMD ;
 int _PTRS_PER_PTE ;
 int context ;
 int mm_struct ;
 int mm_users ;
 int pgd ;

void output_mm_defines(void)
{
 COMMENT("Size of struct page");
 DEFINE(STRUCT_PAGE_SIZE, sizeof(struct page));
 BLANK();
 COMMENT("Linux mm_struct offsets.");
 OFFSET(MM_USERS, mm_struct, mm_users);
 OFFSET(MM_PGD, mm_struct, pgd);
 OFFSET(MM_CONTEXT, mm_struct, context);
 BLANK();
 DEFINE(_PGD_T_SIZE, sizeof(pgd_t));
 DEFINE(_PMD_T_SIZE, sizeof(pmd_t));
 DEFINE(_PTE_T_SIZE, sizeof(pte_t));
 BLANK();
 DEFINE(_PGD_T_LOG2, PGD_T_LOG2);

 DEFINE(_PMD_T_LOG2, PMD_T_LOG2);

 DEFINE(_PTE_T_LOG2, PTE_T_LOG2);
 BLANK();
 DEFINE(_PGD_ORDER, PGD_ORDER);

 DEFINE(_PMD_ORDER, PMD_ORDER);

 DEFINE(_PTE_ORDER, PTE_ORDER);
 BLANK();
 DEFINE(_PMD_SHIFT, PMD_SHIFT);
 DEFINE(_PGDIR_SHIFT, PGDIR_SHIFT);
 BLANK();
 DEFINE(_PTRS_PER_PGD, PTRS_PER_PGD);
 DEFINE(_PTRS_PER_PMD, PTRS_PER_PMD);
 DEFINE(_PTRS_PER_PTE, PTRS_PER_PTE);
 BLANK();
 DEFINE(_PAGE_SHIFT, PAGE_SHIFT);
 DEFINE(_PAGE_SIZE, PAGE_SIZE);
 BLANK();
}
