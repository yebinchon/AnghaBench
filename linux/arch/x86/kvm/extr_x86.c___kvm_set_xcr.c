
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int xcr0; int guest_supported_xcr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ XCR_XFEATURE_ENABLED_MASK ;
 int XFEATURE_MASK_AVX512 ;
 int XFEATURE_MASK_BNDCSR ;
 int XFEATURE_MASK_BNDREGS ;
 int XFEATURE_MASK_EXTEND ;
 int XFEATURE_MASK_FP ;
 int XFEATURE_MASK_SSE ;
 int XFEATURE_MASK_YMM ;
 int kvm_update_cpuid (struct kvm_vcpu*) ;

__attribute__((used)) static int __kvm_set_xcr(struct kvm_vcpu *vcpu, u32 index, u64 xcr)
{
 u64 xcr0 = xcr;
 u64 old_xcr0 = vcpu->arch.xcr0;
 u64 valid_bits;


 if (index != XCR_XFEATURE_ENABLED_MASK)
  return 1;
 if (!(xcr0 & XFEATURE_MASK_FP))
  return 1;
 if ((xcr0 & XFEATURE_MASK_YMM) && !(xcr0 & XFEATURE_MASK_SSE))
  return 1;






 valid_bits = vcpu->arch.guest_supported_xcr0 | XFEATURE_MASK_FP;
 if (xcr0 & ~valid_bits)
  return 1;

 if ((!(xcr0 & XFEATURE_MASK_BNDREGS)) !=
     (!(xcr0 & XFEATURE_MASK_BNDCSR)))
  return 1;

 if (xcr0 & XFEATURE_MASK_AVX512) {
  if (!(xcr0 & XFEATURE_MASK_YMM))
   return 1;
  if ((xcr0 & XFEATURE_MASK_AVX512) != XFEATURE_MASK_AVX512)
   return 1;
 }
 vcpu->arch.xcr0 = xcr0;

 if ((xcr0 ^ old_xcr0) & XFEATURE_MASK_EXTEND)
  kvm_update_cpuid(vcpu);
 return 0;
}
