
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MCG_STATUS_RIPV ;
 int MSR_IA32_MCG_STATUS ;
 scalar_t__ cpu_is_offline (int) ;
 int crashing_cpu ;
 int mce_rdmsrl (int ) ;
 int mce_wrmsrl (int ,int ) ;

__attribute__((used)) static bool __mc_check_crashing_cpu(int cpu)
{
 if (cpu_is_offline(cpu) ||
     (crashing_cpu != -1 && crashing_cpu != cpu)) {
  u64 mcgstatus;

  mcgstatus = mce_rdmsrl(MSR_IA32_MCG_STATUS);
  if (mcgstatus & MCG_STATUS_RIPV) {
   mce_wrmsrl(MSR_IA32_MCG_STATUS, 0);
   return 1;
  }
 }
 return 0;
}
