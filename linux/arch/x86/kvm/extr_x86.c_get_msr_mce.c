
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int mcg_cap; int mcg_ctl; int mcg_status; int* mce_banks; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MCG_CTL_P ;
 int MSR_IA32_MC0_CTL ;



 int MSR_IA32_MCx_CTL (unsigned int) ;



__attribute__((used)) static int get_msr_mce(struct kvm_vcpu *vcpu, u32 msr, u64 *pdata, bool host)
{
 u64 data;
 u64 mcg_cap = vcpu->arch.mcg_cap;
 unsigned bank_num = mcg_cap & 0xff;

 switch (msr) {
 case 129:
 case 128:
  data = 0;
  break;
 case 132:
  data = vcpu->arch.mcg_cap;
  break;
 case 131:
  if (!(mcg_cap & MCG_CTL_P) && !host)
   return 1;
  data = vcpu->arch.mcg_ctl;
  break;
 case 130:
  data = vcpu->arch.mcg_status;
  break;
 default:
  if (msr >= MSR_IA32_MC0_CTL &&
      msr < MSR_IA32_MCx_CTL(bank_num)) {
   u32 offset = msr - MSR_IA32_MC0_CTL;
   data = vcpu->arch.mce_banks[offset];
   break;
  }
  return 1;
 }
 *pdata = data;
 return 0;
}
