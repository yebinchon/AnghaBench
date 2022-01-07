
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int __xen_set_pte (int *,int ) ;
 int trace_xen_mmu_set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;

__attribute__((used)) static void xen_set_pte_at(struct mm_struct *mm, unsigned long addr,
      pte_t *ptep, pte_t pteval)
{
 trace_xen_mmu_set_pte_at(mm, addr, ptep, pteval);
 __xen_set_pte(ptep, pteval);
}
