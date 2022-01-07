
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;


 int MTRR_TYPE_UNCACHABLE ;
 int MTRR_TYPE_WRBACK ;
 int X86_FEATURE_MTRR ;
 scalar_t__ guest_cpuid_has (struct kvm_vcpu*,int ) ;

__attribute__((used)) static u8 mtrr_disabled_type(struct kvm_vcpu *vcpu)
{
 if (guest_cpuid_has(vcpu, X86_FEATURE_MTRR))
  return MTRR_TYPE_UNCACHABLE;
 else
  return MTRR_TYPE_WRBACK;
}
