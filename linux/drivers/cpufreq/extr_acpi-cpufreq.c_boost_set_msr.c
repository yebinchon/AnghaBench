
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int x86_vendor; } ;


 int EINVAL ;
 int MSR_IA32_MISC_ENABLE ;
 int MSR_IA32_MISC_ENABLE_TURBO_DISABLE ;
 int MSR_K7_HWCR ;
 int MSR_K7_HWCR_CPB_DIS ;



 TYPE_1__ boot_cpu_data ;
 int rdmsrl (int ,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static int boost_set_msr(bool enable)
{
 u32 msr_addr;
 u64 msr_mask, val;

 switch (boot_cpu_data.x86_vendor) {
 case 128:
  msr_addr = MSR_IA32_MISC_ENABLE;
  msr_mask = MSR_IA32_MISC_ENABLE_TURBO_DISABLE;
  break;
 case 129:
 case 130:
  msr_addr = MSR_K7_HWCR;
  msr_mask = MSR_K7_HWCR_CPB_DIS;
  break;
 default:
  return -EINVAL;
 }

 rdmsrl(msr_addr, val);

 if (enable)
  val &= ~msr_mask;
 else
  val |= msr_mask;

 wrmsrl(msr_addr, val);
 return 0;
}
