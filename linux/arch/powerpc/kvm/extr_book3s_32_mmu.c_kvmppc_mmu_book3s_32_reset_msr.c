
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_set_msr (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvmppc_mmu_book3s_32_reset_msr(struct kvm_vcpu *vcpu)
{
 kvmppc_set_msr(vcpu, 0);
}
