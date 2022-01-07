
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int KVM_NR_VAR_MTRR ;
 int MSR_IA32_CR_PAT ;
 int MSR_MTRRdefType ;
 int MSR_MTRRfix4K_F8000 ;
 int MSR_MTRRfix64K_00000 ;
 int WARN_ON (int) ;
 unsigned long long cpuid_maxphyaddr (struct kvm_vcpu*) ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int kvm_pat_valid (int) ;
 int msr_mtrr_valid (int) ;
 int valid_mtrr_type (int) ;

bool kvm_mtrr_valid(struct kvm_vcpu *vcpu, u32 msr, u64 data)
{
 int i;
 u64 mask;

 if (!msr_mtrr_valid(msr))
  return 0;

 if (msr == MSR_IA32_CR_PAT) {
  return kvm_pat_valid(data);
 } else if (msr == MSR_MTRRdefType) {
  if (data & ~0xcff)
   return 0;
  return valid_mtrr_type(data & 0xff);
 } else if (msr >= MSR_MTRRfix64K_00000 && msr <= MSR_MTRRfix4K_F8000) {
  for (i = 0; i < 8 ; i++)
   if (!valid_mtrr_type((data >> (i * 8)) & 0xff))
    return 0;
  return 1;
 }


 WARN_ON(!(msr >= 0x200 && msr < 0x200 + 2 * KVM_NR_VAR_MTRR));

 mask = (~0ULL) << cpuid_maxphyaddr(vcpu);
 if ((msr & 1) == 0) {

  if (!valid_mtrr_type(data & 0xff))
   return 0;
  mask |= 0xf00;
 } else

  mask |= 0x7ff;
 if (data & mask) {
  kvm_inject_gp(vcpu, 0);
  return 0;
 }

 return 1;
}
