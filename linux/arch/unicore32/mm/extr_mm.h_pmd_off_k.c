
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int pgd_offset_k (unsigned long) ;
 int * pmd_off (int ,unsigned long) ;

__attribute__((used)) static inline pmd_t *pmd_off_k(unsigned long virt)
{
 return pmd_off(pgd_offset_k(virt), virt);
}
