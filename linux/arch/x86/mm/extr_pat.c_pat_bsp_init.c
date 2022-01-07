
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_IA32_CR_PAT ;
 int X86_FEATURE_PAT ;
 int __init_cache_modes (int ) ;
 int boot_cpu_has (int ) ;
 int pat_disable (char*) ;
 int pat_initialized ;
 int rdmsrl (int ,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void pat_bsp_init(u64 pat)
{
 u64 tmp_pat;

 if (!boot_cpu_has(X86_FEATURE_PAT)) {
  pat_disable("PAT not supported by CPU.");
  return;
 }

 rdmsrl(MSR_IA32_CR_PAT, tmp_pat);
 if (!tmp_pat) {
  pat_disable("PAT MSR is 0, disabled.");
  return;
 }

 wrmsrl(MSR_IA32_CR_PAT, pat);
 pat_initialized = 1;

 __init_cache_modes(pat);
}
