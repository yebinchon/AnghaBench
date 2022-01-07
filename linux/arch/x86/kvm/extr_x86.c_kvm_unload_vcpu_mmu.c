
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_mmu_unload (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_unload_vcpu_mmu(struct kvm_vcpu *vcpu)
{
 vcpu_load(vcpu);
 kvm_mmu_unload(vcpu);
 vcpu_put(vcpu);
}
