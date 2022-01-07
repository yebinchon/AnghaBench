
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_mmu_pre_destroy_vm (struct kvm*) ;

void kvm_arch_pre_destroy_vm(struct kvm *kvm)
{
 kvm_mmu_pre_destroy_vm(kvm);
}
