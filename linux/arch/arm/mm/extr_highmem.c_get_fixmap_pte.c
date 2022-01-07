
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pmd_off_k (unsigned long) ;
 int * pte_offset_kernel (int ,unsigned long) ;

__attribute__((used)) static inline pte_t get_fixmap_pte(unsigned long vaddr)
{
 pte_t *ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);

 return *ptep;
}
