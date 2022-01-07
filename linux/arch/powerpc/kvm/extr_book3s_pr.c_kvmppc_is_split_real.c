
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvm_vcpu {int dummy; } ;


 int MSR_DR ;
 int MSR_IR ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;

__attribute__((used)) static bool kvmppc_is_split_real(struct kvm_vcpu *vcpu)
{
 ulong msr = kvmppc_get_msr(vcpu);
 return (msr & (MSR_IR|MSR_DR)) == MSR_DR;
}
