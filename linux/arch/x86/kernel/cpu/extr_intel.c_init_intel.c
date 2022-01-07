
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int cpuid_level; int x86; int x86_model; int x86_cache_alignment; int x86_clflush_size; unsigned int x86_cache_size; int x86_stepping; int x86_model_id; } ;


 int INTEL_FAM6_ATOM_GOLDMONT ;
 int MSR_IA32_MISC_ENABLE ;
 scalar_t__ TSX_CTRL_DISABLE ;
 scalar_t__ TSX_CTRL_ENABLE ;
 int X86_BUG_CLFLUSH_MONITOR ;
 int X86_BUG_MONITOR ;
 int X86_FEATURE_ARCH_PERFMON ;
 int X86_FEATURE_BTS ;
 int X86_FEATURE_CLFLUSH ;
 int X86_FEATURE_DS ;
 int X86_FEATURE_LFENCE_RDTSC ;
 int X86_FEATURE_MWAIT ;
 int X86_FEATURE_P3 ;
 int X86_FEATURE_P4 ;
 int X86_FEATURE_PEBS ;
 int X86_FEATURE_REP_GOOD ;
 int X86_FEATURE_TME ;
 int X86_FEATURE_VMX ;
 int X86_FEATURE_XMM2 ;
 int X86_FEATURE_XTOPOLOGY ;
 scalar_t__ boot_cpu_has (int ) ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 unsigned int cpuid_eax (int) ;
 int detect_extended_topology (struct cpuinfo_x86*) ;
 int detect_ht (struct cpuinfo_x86*) ;
 int detect_num_cpu_cores (struct cpuinfo_x86*) ;
 int detect_tme (struct cpuinfo_x86*) ;
 int detect_vmx_virtcap (struct cpuinfo_x86*) ;
 int early_init_intel (struct cpuinfo_x86*) ;
 int init_intel_cacheinfo (struct cpuinfo_x86*) ;
 int init_intel_misc_features (struct cpuinfo_x86*) ;
 int intel_workarounds (struct cpuinfo_x86*) ;
 int rdmsr (int ,unsigned int,unsigned int) ;
 int set_cpu_bug (struct cpuinfo_x86*,int ) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int srat_detect_node (struct cpuinfo_x86*) ;
 int strcpy (int ,char*) ;
 scalar_t__ tsx_ctrl_state ;
 int tsx_disable () ;
 int tsx_enable () ;

__attribute__((used)) static void init_intel(struct cpuinfo_x86 *c)
{
 early_init_intel(c);

 intel_workarounds(c);






 detect_extended_topology(c);

 if (!cpu_has(c, X86_FEATURE_XTOPOLOGY)) {




  detect_num_cpu_cores(c);



 }

 init_intel_cacheinfo(c);

 if (c->cpuid_level > 9) {
  unsigned eax = cpuid_eax(10);

  if ((eax & 0xff) && (((eax>>8) & 0xff) > 1))
   set_cpu_cap(c, X86_FEATURE_ARCH_PERFMON);
 }

 if (cpu_has(c, X86_FEATURE_XMM2))
  set_cpu_cap(c, X86_FEATURE_LFENCE_RDTSC);

 if (boot_cpu_has(X86_FEATURE_DS)) {
  unsigned int l1, l2;

  rdmsr(MSR_IA32_MISC_ENABLE, l1, l2);
  if (!(l1 & (1<<11)))
   set_cpu_cap(c, X86_FEATURE_BTS);
  if (!(l1 & (1<<12)))
   set_cpu_cap(c, X86_FEATURE_PEBS);
 }

 if (c->x86 == 6 && boot_cpu_has(X86_FEATURE_CLFLUSH) &&
     (c->x86_model == 29 || c->x86_model == 46 || c->x86_model == 47))
  set_cpu_bug(c, X86_BUG_CLFLUSH_MONITOR);

 if (c->x86 == 6 && boot_cpu_has(X86_FEATURE_MWAIT) &&
  ((c->x86_model == INTEL_FAM6_ATOM_GOLDMONT)))
  set_cpu_bug(c, X86_BUG_MONITOR);
 if (c->x86 == 6) {
  unsigned int l2 = c->x86_cache_size;
  char *p = ((void*)0);

  switch (c->x86_model) {
  case 5:
   if (l2 == 0)
    p = "Celeron (Covington)";
   else if (l2 == 256)
    p = "Mobile Pentium II (Dixon)";
   break;

  case 6:
   if (l2 == 128)
    p = "Celeron (Mendocino)";
   else if (c->x86_stepping == 0 || c->x86_stepping == 5)
    p = "Celeron-A";
   break;

  case 8:
   if (l2 == 128)
    p = "Celeron (Coppermine)";
   break;
  }

  if (p)
   strcpy(c->x86_model_id, p);
 }

 if (c->x86 == 15)
  set_cpu_cap(c, X86_FEATURE_P4);
 if (c->x86 == 6)
  set_cpu_cap(c, X86_FEATURE_P3);



 srat_detect_node(c);

 if (cpu_has(c, X86_FEATURE_VMX))
  detect_vmx_virtcap(c);

 if (cpu_has(c, X86_FEATURE_TME))
  detect_tme(c);

 init_intel_misc_features(c);

 if (tsx_ctrl_state == TSX_CTRL_ENABLE)
  tsx_enable();
 if (tsx_ctrl_state == TSX_CTRL_DISABLE)
  tsx_disable();
}
