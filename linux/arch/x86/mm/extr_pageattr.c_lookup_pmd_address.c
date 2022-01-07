
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 scalar_t__ p4d_large (int ) ;
 scalar_t__ p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int p4d_present (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pud_large (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

pmd_t *lookup_pmd_address(unsigned long address)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;

 pgd = pgd_offset_k(address);
 if (pgd_none(*pgd))
  return ((void*)0);

 p4d = p4d_offset(pgd, address);
 if (p4d_none(*p4d) || p4d_large(*p4d) || !p4d_present(*p4d))
  return ((void*)0);

 pud = pud_offset(p4d, address);
 if (pud_none(*pud) || pud_large(*pud) || !pud_present(*pud))
  return ((void*)0);

 return pmd_offset(pud, address);
}
