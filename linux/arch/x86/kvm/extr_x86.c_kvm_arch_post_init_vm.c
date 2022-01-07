
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_mmu_post_init_vm (struct kvm*) ;

int kvm_arch_post_init_vm(struct kvm *kvm)
{
 return kvm_mmu_post_init_vm(kvm);
}
