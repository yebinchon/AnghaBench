
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MCG_EXT_CTL_LMCE_EN ;
 int MSR_IA32_MCG_EXT_CTL ;
 int lmce_supported () ;
 int rdmsrl (int ,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void intel_clear_lmce(void)
{
 u64 val;

 if (!lmce_supported())
  return;

 rdmsrl(MSR_IA32_MCG_EXT_CTL, val);
 val &= ~MCG_EXT_CTL_LMCE_EN;
 wrmsrl(MSR_IA32_MCG_EXT_CTL, val);
}
