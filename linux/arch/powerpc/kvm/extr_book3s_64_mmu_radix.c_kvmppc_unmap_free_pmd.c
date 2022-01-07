
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 int PAGE_SHIFT ;
 int PMD_SHIFT ;
 unsigned long PTRS_PER_PMD ;
 int WARN_ON_ONCE (int) ;
 int kvmppc_pmd_free (int *) ;
 int kvmppc_unmap_free_pte (struct kvm*,int *,int,unsigned int) ;
 int kvmppc_unmap_pte (struct kvm*,int *,int,int ,int *,unsigned int) ;
 int pmd_clear (int *) ;
 scalar_t__ pmd_is_leaf (int ) ;
 int pmd_present (int ) ;
 int * pte_offset_map (int *,int ) ;
 int pte_pfn (int ) ;

__attribute__((used)) static void kvmppc_unmap_free_pmd(struct kvm *kvm, pmd_t *pmd, bool full,
      unsigned int lpid)
{
 unsigned long im;
 pmd_t *p = pmd;

 for (im = 0; im < PTRS_PER_PMD; ++im, ++p) {
  if (!pmd_present(*p))
   continue;
  if (pmd_is_leaf(*p)) {
   if (full) {
    pmd_clear(p);
   } else {
    WARN_ON_ONCE(1);
    kvmppc_unmap_pte(kvm, (pte_t *)p,
      pte_pfn(*(pte_t *)p) << PAGE_SHIFT,
      PMD_SHIFT, ((void*)0), lpid);
   }
  } else {
   pte_t *pte;

   pte = pte_offset_map(p, 0);
   kvmppc_unmap_free_pte(kvm, pte, full, lpid);
   pmd_clear(p);
  }
 }
 kvmppc_pmd_free(pmd);
}
