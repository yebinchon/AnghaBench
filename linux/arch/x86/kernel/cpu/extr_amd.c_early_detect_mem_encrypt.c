
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuinfo_x86 {int x86_phys_bits; } ;


 int CONFIG_X86_32 ;
 scalar_t__ IS_ENABLED (int ) ;
 int MSR_K7_HWCR ;
 int MSR_K7_HWCR_SMMLOCK ;
 int MSR_K8_SYSCFG ;
 int MSR_K8_SYSCFG_MEM_ENCRYPT ;
 int X86_FEATURE_SEV ;
 int X86_FEATURE_SME ;
 int clear_cpu_cap (struct cpuinfo_x86*,int ) ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int cpuid_ebx (int) ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static void early_detect_mem_encrypt(struct cpuinfo_x86 *c)
{
 u64 msr;
 if (cpu_has(c, X86_FEATURE_SME) || cpu_has(c, X86_FEATURE_SEV)) {

  rdmsrl(MSR_K8_SYSCFG, msr);
  if (!(msr & MSR_K8_SYSCFG_MEM_ENCRYPT))
   goto clear_all;






  c->x86_phys_bits -= (cpuid_ebx(0x8000001f) >> 6) & 0x3f;

  if (IS_ENABLED(CONFIG_X86_32))
   goto clear_all;

  rdmsrl(MSR_K7_HWCR, msr);
  if (!(msr & MSR_K7_HWCR_SMMLOCK))
   goto clear_sev;

  return;

clear_all:
  clear_cpu_cap(c, X86_FEATURE_SME);
clear_sev:
  clear_cpu_cap(c, X86_FEATURE_SEV);
 }
}
