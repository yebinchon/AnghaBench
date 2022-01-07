
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int _PAGE_PRESENT ;
 int __pa (int *) ;
 int __pgd (int) ;
 scalar_t__ get_safe_page (int ) ;
 int * p4d_offset (int *,int ) ;
 int * pmd_offset (int *,int ) ;
 int * pud_offset (int *,int ) ;
 int set_pgd (int *,int ) ;

__attribute__((used)) static pmd_t *resume_one_md_table_init(pgd_t *pgd)
{
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd_table;
 p4d = p4d_offset(pgd, 0);
 pud = pud_offset(p4d, 0);
 pmd_table = pmd_offset(pud, 0);


 return pmd_table;
}
