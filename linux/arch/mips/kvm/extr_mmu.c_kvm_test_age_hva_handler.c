
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int gpa_t ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int * kvm_mips_pte_for_gpa (struct kvm*,int *,int) ;
 int pte_young (int ) ;

__attribute__((used)) static int kvm_test_age_hva_handler(struct kvm *kvm, gfn_t gfn, gfn_t gfn_end,
        struct kvm_memory_slot *memslot, void *data)
{
 gpa_t gpa = gfn << PAGE_SHIFT;
 pte_t *gpa_pte = kvm_mips_pte_for_gpa(kvm, ((void*)0), gpa);

 if (!gpa_pte)
  return 0;
 return pte_young(*gpa_pte);
}
