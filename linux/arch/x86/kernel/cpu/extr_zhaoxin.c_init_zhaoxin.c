
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int cpuid_level; int x86; } ;


 int X86_FEATURE_ARCH_PERFMON ;
 int X86_FEATURE_LFENCE_RDTSC ;
 int X86_FEATURE_VMX ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 unsigned int cpuid_eax (int) ;
 int detect_ht (struct cpuinfo_x86*) ;
 int detect_num_cpu_cores (struct cpuinfo_x86*) ;
 int early_init_zhaoxin (struct cpuinfo_x86*) ;
 int init_intel_cacheinfo (struct cpuinfo_x86*) ;
 int init_zhaoxin_cap (struct cpuinfo_x86*) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int zhaoxin_detect_vmx_virtcap (struct cpuinfo_x86*) ;

__attribute__((used)) static void init_zhaoxin(struct cpuinfo_x86 *c)
{
 early_init_zhaoxin(c);
 init_intel_cacheinfo(c);
 detect_num_cpu_cores(c);




 if (c->cpuid_level > 9) {
  unsigned int eax = cpuid_eax(10);






  if ((eax & 0xff) && (((eax >> 8) & 0xff) > 1))
   set_cpu_cap(c, X86_FEATURE_ARCH_PERFMON);
 }

 if (c->x86 >= 0x6)
  init_zhaoxin_cap(c);




 if (cpu_has(c, X86_FEATURE_VMX))
  zhaoxin_detect_vmx_virtcap(c);
}
