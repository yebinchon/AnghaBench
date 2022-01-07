
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;


 scalar_t__ PAGE_SIZE ;
 int do_kvm_unmap_hva (struct kvm*,unsigned long,scalar_t__) ;

__attribute__((used)) static void kvm_set_spte_hva_pr(struct kvm *kvm, unsigned long hva, pte_t pte)
{

 do_kvm_unmap_hva(kvm, hva, hva + PAGE_SIZE);
}
