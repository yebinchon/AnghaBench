
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int __xen_set_pte (int *,int ) ;
 int trace_xen_mmu_set_pte (int *,int ) ;

__attribute__((used)) static void xen_set_pte(pte_t *ptep, pte_t pteval)
{
 trace_xen_mmu_set_pte(ptep, pteval);
 __xen_set_pte(ptep, pteval);
}
