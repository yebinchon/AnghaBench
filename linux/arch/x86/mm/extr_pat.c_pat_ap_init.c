
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_IA32_CR_PAT ;
 int X86_FEATURE_PAT ;
 int boot_cpu_has (int ) ;
 int panic (char*) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void pat_ap_init(u64 pat)
{
 if (!boot_cpu_has(X86_FEATURE_PAT)) {




  panic("x86/PAT: PAT enabled, but not supported by secondary CPU\n");
 }

 wrmsrl(MSR_IA32_CR_PAT, pat);
}
