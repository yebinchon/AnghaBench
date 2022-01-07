
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_mmu_pte_flush (struct kvm_vcpu*,int ,int ) ;

void kvmppc_mmu_hpte_destroy(struct kvm_vcpu *vcpu)
{
 kvmppc_mmu_pte_flush(vcpu, 0, 0);
}
