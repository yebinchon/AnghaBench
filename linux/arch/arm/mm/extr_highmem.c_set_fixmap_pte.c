
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long __fix_to_virt (int) ;
 int local_flush_tlb_kernel_page (unsigned long) ;
 int pmd_off_k (unsigned long) ;
 int * pte_offset_kernel (int ,unsigned long) ;
 int set_pte_ext (int *,int ,int ) ;

__attribute__((used)) static inline void set_fixmap_pte(int idx, pte_t pte)
{
 unsigned long vaddr = __fix_to_virt(idx);
 pte_t *ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);

 set_pte_ext(ptep, pte, 0);
 local_flush_tlb_kernel_page(vaddr);
}
