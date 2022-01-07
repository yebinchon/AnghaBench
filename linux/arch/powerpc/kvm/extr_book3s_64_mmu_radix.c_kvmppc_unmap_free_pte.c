
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;


 int PAGE_SHIFT ;
 int PTE_INDEX_SIZE ;
 unsigned long PTRS_PER_PTE ;
 int WARN_ON_ONCE (int) ;
 int kvmppc_pte_free (int *) ;
 int kvmppc_unmap_pte (struct kvm*,int *,int,int,int *,unsigned int) ;
 int memset (int *,int ,int) ;
 int pte_pfn (int ) ;
 scalar_t__ pte_val (int ) ;

__attribute__((used)) static void kvmppc_unmap_free_pte(struct kvm *kvm, pte_t *pte, bool full,
      unsigned int lpid)
{
 if (full) {
  memset(pte, 0, sizeof(long) << PTE_INDEX_SIZE);
 } else {
  pte_t *p = pte;
  unsigned long it;

  for (it = 0; it < PTRS_PER_PTE; ++it, ++p) {
   if (pte_val(*p) == 0)
    continue;
   WARN_ON_ONCE(1);
   kvmppc_unmap_pte(kvm, p,
      pte_pfn(*p) << PAGE_SHIFT,
      PAGE_SHIFT, ((void*)0), lpid);
  }
 }

 kvmppc_pte_free(pte);
}
