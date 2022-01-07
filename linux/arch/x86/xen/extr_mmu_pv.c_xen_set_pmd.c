
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int trace_xen_mmu_set_pmd (int *,int ) ;
 int xen_page_pinned (int *) ;
 int xen_set_pmd_hyper (int *,int ) ;

__attribute__((used)) static void xen_set_pmd(pmd_t *ptr, pmd_t val)
{
 trace_xen_mmu_set_pmd(ptr, val);



 if (!xen_page_pinned(ptr)) {
  *ptr = val;
  return;
 }

 xen_set_pmd_hyper(ptr, val);
}
