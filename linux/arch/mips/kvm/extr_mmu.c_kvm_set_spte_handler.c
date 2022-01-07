
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int flags; } ;
struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int gpa_t ;
typedef int gfn_t ;


 int KVM_MEM_LOG_DIRTY_PAGES ;
 int KVM_MEM_READONLY ;
 int PAGE_SHIFT ;
 int * kvm_mips_pte_for_gpa (struct kvm*,int *,int) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_mkclean (int ) ;
 scalar_t__ pte_pfn (int ) ;
 int pte_present (int ) ;
 int pte_wrprotect (int ) ;
 int pte_young (int ) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static int kvm_set_spte_handler(struct kvm *kvm, gfn_t gfn, gfn_t gfn_end,
    struct kvm_memory_slot *memslot, void *data)
{
 gpa_t gpa = gfn << PAGE_SHIFT;
 pte_t hva_pte = *(pte_t *)data;
 pte_t *gpa_pte = kvm_mips_pte_for_gpa(kvm, ((void*)0), gpa);
 pte_t old_pte;

 if (!gpa_pte)
  return 0;


 old_pte = *gpa_pte;
 if (memslot->flags & KVM_MEM_LOG_DIRTY_PAGES && !pte_dirty(old_pte))
  hva_pte = pte_mkclean(hva_pte);
 else if (memslot->flags & KVM_MEM_READONLY)
  hva_pte = pte_wrprotect(hva_pte);

 set_pte(gpa_pte, hva_pte);


 if (!pte_present(old_pte) || !pte_young(old_pte))
  return 0;


 return !pte_present(hva_pte) ||
        !pte_young(hva_pte) ||
        pte_pfn(old_pte) != pte_pfn(hva_pte) ||
        (pte_dirty(old_pte) && !pte_dirty(hva_pte));
}
