
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_IA32_CR_PAT ;
 int PAT (int,int ) ;
 int UC ;
 int UC_MINUS ;
 int WB ;
 int WT ;
 int X86_FEATURE_PAT ;
 int __init_cache_modes (int) ;
 scalar_t__ boot_cpu_has (int ) ;
 scalar_t__ init_cm_done ;
 int rdmsrl (int ,int) ;

void init_cache_modes(void)
{
 u64 pat = 0;

 if (init_cm_done)
  return;

 if (boot_cpu_has(X86_FEATURE_PAT)) {
  rdmsrl(MSR_IA32_CR_PAT, pat);
 }

 if (!pat) {
  pat = PAT(0, WB) | PAT(1, WT) | PAT(2, UC_MINUS) | PAT(3, UC) |
        PAT(4, WB) | PAT(5, WT) | PAT(6, UC_MINUS) | PAT(7, UC);
 }

 __init_cache_modes(pat);
}
