
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int EFER_FFXSR ;
 int EFER_LMA ;
 int EFER_LME ;
 int EFER_NX ;
 int EFER_SVME ;
 int X86_FEATURE_FXSR_OPT ;
 int X86_FEATURE_LM ;
 int X86_FEATURE_NX ;
 int X86_FEATURE_SVM ;
 int guest_cpuid_has (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool __kvm_valid_efer(struct kvm_vcpu *vcpu, u64 efer)
{
 if (efer & EFER_FFXSR && !guest_cpuid_has(vcpu, X86_FEATURE_FXSR_OPT))
  return 0;

 if (efer & EFER_SVME && !guest_cpuid_has(vcpu, X86_FEATURE_SVM))
  return 0;

 if (efer & (EFER_LME | EFER_LMA) &&
     !guest_cpuid_has(vcpu, X86_FEATURE_LM))
  return 0;

 if (efer & EFER_NX && !guest_cpuid_has(vcpu, X86_FEATURE_NX))
  return 0;

 return 1;

}
