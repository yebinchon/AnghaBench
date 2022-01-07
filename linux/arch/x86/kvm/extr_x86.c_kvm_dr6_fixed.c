
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int DR6_FIXED_1 ;
 int DR6_RTM ;
 int X86_FEATURE_RTM ;
 int guest_cpuid_has (struct kvm_vcpu*,int ) ;

__attribute__((used)) static u64 kvm_dr6_fixed(struct kvm_vcpu *vcpu)
{
 u64 fixed = DR6_FIXED_1;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_RTM))
  fixed |= DR6_RTM;
 return fixed;
}
