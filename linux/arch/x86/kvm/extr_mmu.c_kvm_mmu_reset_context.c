
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_init_mmu (struct kvm_vcpu*,int) ;
 int kvm_mmu_unload (struct kvm_vcpu*) ;

void kvm_mmu_reset_context(struct kvm_vcpu *vcpu)
{
 kvm_mmu_unload(vcpu);
 kvm_init_mmu(vcpu, 1);
}
