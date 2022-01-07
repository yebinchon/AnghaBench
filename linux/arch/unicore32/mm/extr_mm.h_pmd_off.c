
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int * pmd_offset (int *,unsigned long) ;

__attribute__((used)) static inline pmd_t *pmd_off(pgd_t *pgd, unsigned long virt)
{
 return pmd_offset((pud_t *)pgd, virt);
}
