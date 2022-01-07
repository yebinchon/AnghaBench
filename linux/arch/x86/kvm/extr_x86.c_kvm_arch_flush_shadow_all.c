
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_mmu_zap_all (struct kvm*) ;

void kvm_arch_flush_shadow_all(struct kvm *kvm)
{
 kvm_mmu_zap_all(kvm);
}
