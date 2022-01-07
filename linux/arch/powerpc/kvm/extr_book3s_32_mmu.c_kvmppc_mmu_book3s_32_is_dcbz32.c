
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;



__attribute__((used)) static bool kvmppc_mmu_book3s_32_is_dcbz32(struct kvm_vcpu *vcpu)
{
 return 1;
}
