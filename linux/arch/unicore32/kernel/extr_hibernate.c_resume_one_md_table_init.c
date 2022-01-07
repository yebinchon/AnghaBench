
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int * pmd_offset (int *,int ) ;
 int * pud_offset (int *,int ) ;

__attribute__((used)) static pmd_t *resume_one_md_table_init(pgd_t *pgd)
{
 pud_t *pud;
 pmd_t *pmd_table;

 pud = pud_offset(pgd, 0);
 pmd_table = pmd_offset(pud, 0);

 return pmd_table;
}
