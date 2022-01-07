
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;


 int kvm_unmap_hva (struct kvm*,unsigned long) ;

int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
{

 kvm_unmap_hva(kvm, hva);
 return 0;
}
