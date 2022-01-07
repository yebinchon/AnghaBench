
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long CR4_RESERVED_BITS ;
 int EINVAL ;
 unsigned long X86_CR4_FSGSBASE ;
 unsigned long X86_CR4_LA57 ;
 unsigned long X86_CR4_OSXSAVE ;
 unsigned long X86_CR4_PKE ;
 unsigned long X86_CR4_SMAP ;
 unsigned long X86_CR4_SMEP ;
 unsigned long X86_CR4_UMIP ;
 int X86_FEATURE_FSGSBASE ;
 int X86_FEATURE_LA57 ;
 int X86_FEATURE_PKU ;
 int X86_FEATURE_SMAP ;
 int X86_FEATURE_SMEP ;
 int X86_FEATURE_UMIP ;
 int X86_FEATURE_XSAVE ;
 int guest_cpuid_has (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvm_valid_cr4(struct kvm_vcpu *vcpu, unsigned long cr4)
{
 if (cr4 & CR4_RESERVED_BITS)
  return -EINVAL;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_XSAVE) && (cr4 & X86_CR4_OSXSAVE))
  return -EINVAL;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_SMEP) && (cr4 & X86_CR4_SMEP))
  return -EINVAL;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_SMAP) && (cr4 & X86_CR4_SMAP))
  return -EINVAL;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_FSGSBASE) && (cr4 & X86_CR4_FSGSBASE))
  return -EINVAL;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_PKU) && (cr4 & X86_CR4_PKE))
  return -EINVAL;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_LA57) && (cr4 & X86_CR4_LA57))
  return -EINVAL;

 if (!guest_cpuid_has(vcpu, X86_FEATURE_UMIP) && (cr4 & X86_CR4_UMIP))
  return -EINVAL;

 return 0;
}
