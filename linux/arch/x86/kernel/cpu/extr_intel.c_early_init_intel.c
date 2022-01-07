
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u32 ;
struct cpuinfo_x86 {int x86; int x86_model; int cpuid_level; int microcode; int x86_stepping; int x86_cache_alignment; int x86_phys_bits; int x86_power; int x86_coreid_bits; } ;






 int MSR_IA32_MISC_ENABLE ;
 int MSR_IA32_MISC_ENABLE_FAST_STRING ;
 int MSR_IA32_MISC_ENABLE_LIMIT_CPUID_BIT ;
 int X86_FEATURE_CONSTANT_TSC ;
 int X86_FEATURE_ERMS ;
 int X86_FEATURE_IA64 ;
 int X86_FEATURE_IBPB ;
 int X86_FEATURE_IBRS ;
 int X86_FEATURE_INTEL_STIBP ;
 int X86_FEATURE_MSR_SPEC_CTRL ;
 int X86_FEATURE_NONSTOP_TSC ;
 int X86_FEATURE_NONSTOP_TSC_S3 ;
 int X86_FEATURE_PAT ;
 int X86_FEATURE_PGE ;
 int X86_FEATURE_PSE ;
 int X86_FEATURE_REP_GOOD ;
 int X86_FEATURE_SPEC_CTRL ;
 int X86_FEATURE_SPEC_CTRL_SSBD ;
 int X86_FEATURE_SSBD ;
 int X86_FEATURE_STIBP ;
 int X86_FEATURE_SYSENTER32 ;
 scalar_t__ bad_spectre_microcode (struct cpuinfo_x86*) ;
 int check_memory_type_self_snoop_errata (struct cpuinfo_x86*) ;
 int check_mpx_erratum (struct cpuinfo_x86*) ;
 int clear_cpu_cap (struct cpuinfo_x86*,int ) ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int cpuid_eax (int ) ;
 scalar_t__ detect_extended_topology_early (struct cpuinfo_x86*) ;
 int detect_ht_early (struct cpuinfo_x86*) ;
 int get_count_order (unsigned int) ;
 int get_cpu_cap (struct cpuinfo_x86*) ;
 int intel_get_microcode_revision () ;
 scalar_t__ msr_clear_bit (int ,int ) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 int rdmsrl (int ,int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int setup_clear_cpu_cap (int ) ;

__attribute__((used)) static void early_init_intel(struct cpuinfo_x86 *c)
{
 u64 misc_enable;


 if (c->x86 > 6 || (c->x86 == 6 && c->x86_model >= 0xd)) {
  if (msr_clear_bit(MSR_IA32_MISC_ENABLE,
      MSR_IA32_MISC_ENABLE_LIMIT_CPUID_BIT) > 0) {
   c->cpuid_level = cpuid_eax(0);
   get_cpu_cap(c);
  }
 }

 if ((c->x86 == 0xf && c->x86_model >= 0x03) ||
  (c->x86 == 0x6 && c->x86_model >= 0x0e))
  set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);

 if (c->x86 >= 6 && !cpu_has(c, X86_FEATURE_IA64))
  c->microcode = intel_get_microcode_revision();


 if ((cpu_has(c, X86_FEATURE_SPEC_CTRL) ||
      cpu_has(c, X86_FEATURE_INTEL_STIBP) ||
      cpu_has(c, X86_FEATURE_IBRS) || cpu_has(c, X86_FEATURE_IBPB) ||
      cpu_has(c, X86_FEATURE_STIBP)) && bad_spectre_microcode(c)) {
  pr_warn("Intel Spectre v2 broken microcode detected; disabling Speculation Control\n");
  setup_clear_cpu_cap(X86_FEATURE_IBRS);
  setup_clear_cpu_cap(X86_FEATURE_IBPB);
  setup_clear_cpu_cap(X86_FEATURE_STIBP);
  setup_clear_cpu_cap(X86_FEATURE_SPEC_CTRL);
  setup_clear_cpu_cap(X86_FEATURE_MSR_SPEC_CTRL);
  setup_clear_cpu_cap(X86_FEATURE_INTEL_STIBP);
  setup_clear_cpu_cap(X86_FEATURE_SSBD);
  setup_clear_cpu_cap(X86_FEATURE_SPEC_CTRL_SSBD);
 }
 if (c->x86 == 6 && c->x86_model == 0x1c && c->x86_stepping <= 2 &&
     c->microcode < 0x20e) {
  pr_warn("Atom PSE erratum detected, BIOS microcode update recommended\n");
  clear_cpu_cap(c, X86_FEATURE_PSE);
 }





 if (c->x86 == 15 && c->x86_cache_alignment == 64)
  c->x86_cache_alignment = 128;



 if (c->x86 == 0xF && c->x86_model == 0x3
     && (c->x86_stepping == 0x3 || c->x86_stepping == 0x4))
  c->x86_phys_bits = 36;
 if (c->x86_power & (1 << 8)) {
  set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);
  set_cpu_cap(c, X86_FEATURE_NONSTOP_TSC);
 }


 if (c->x86 == 6) {
  switch (c->x86_model) {
  case 130:
  case 129:
  case 128:
  case 131:
   set_cpu_cap(c, X86_FEATURE_NONSTOP_TSC_S3);
   break;
  default:
   break;
  }
 }
 if (c->x86 == 6 && c->x86_model < 15)
  clear_cpu_cap(c, X86_FEATURE_PAT);





 if (c->x86 > 6 || (c->x86 == 6 && c->x86_model >= 0xd)) {
  rdmsrl(MSR_IA32_MISC_ENABLE, misc_enable);
  if (!(misc_enable & MSR_IA32_MISC_ENABLE_FAST_STRING)) {
   pr_info("Disabled fast string operations\n");
   setup_clear_cpu_cap(X86_FEATURE_REP_GOOD);
   setup_clear_cpu_cap(X86_FEATURE_ERMS);
  }
 }
 if (c->x86 == 5 && c->x86_model == 9) {
  pr_info("Disabling PGE capability bit\n");
  setup_clear_cpu_cap(X86_FEATURE_PGE);
 }

 if (c->cpuid_level >= 0x00000001) {
  u32 eax, ebx, ecx, edx;

  cpuid(0x00000001, &eax, &ebx, &ecx, &edx);





  if (edx & (1U << 28))
   c->x86_coreid_bits = get_count_order((ebx >> 16) & 0xff);
 }

 check_mpx_erratum(c);
 check_memory_type_self_snoop_errata(c);





 if (detect_extended_topology_early(c) < 0)
  detect_ht_early(c);
}
