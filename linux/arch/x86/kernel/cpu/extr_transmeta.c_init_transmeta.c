
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int * x86_capability; } ;


 size_t CPUID_1_EDX ;
 int X86_FEATURE_CONSTANT_TSC ;
 int cpu_detect_cache_sizes (struct cpuinfo_x86*) ;
 int cpuid (int,void*,void*,void*,void*) ;
 unsigned int cpuid_eax (int) ;
 int cpuid_edx (int) ;
 int early_init_transmeta (struct cpuinfo_x86*) ;
 int pr_info (char*,...) ;
 scalar_t__ randomize_va_space ;
 int rdmsr (int,unsigned int,unsigned int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int wrmsr (int,unsigned int,unsigned int) ;

__attribute__((used)) static void init_transmeta(struct cpuinfo_x86 *c)
{
 unsigned int cap_mask, uk, max, dummy;
 unsigned int cms_rev1, cms_rev2;
 unsigned int cpu_rev, cpu_freq = 0, cpu_flags, new_cpu_rev;
 char cpu_info[65];

 early_init_transmeta(c);

 cpu_detect_cache_sizes(c);


 max = cpuid_eax(0x80860000);
 cpu_rev = 0;
 if (max >= 0x80860001) {
  cpuid(0x80860001, &dummy, &cpu_rev, &cpu_freq, &cpu_flags);
  if (cpu_rev != 0x02000000) {
   pr_info("CPU: Processor revision %u.%u.%u.%u, %u MHz\n",
    (cpu_rev >> 24) & 0xff,
    (cpu_rev >> 16) & 0xff,
    (cpu_rev >> 8) & 0xff,
    cpu_rev & 0xff,
    cpu_freq);
  }
 }
 if (max >= 0x80860002) {
  cpuid(0x80860002, &new_cpu_rev, &cms_rev1, &cms_rev2, &dummy);
  if (cpu_rev == 0x02000000) {
   pr_info("CPU: Processor revision %08X, %u MHz\n",
    new_cpu_rev, cpu_freq);
  }
  pr_info("CPU: Code Morphing Software revision %u.%u.%u-%u-%u\n",
         (cms_rev1 >> 24) & 0xff,
         (cms_rev1 >> 16) & 0xff,
         (cms_rev1 >> 8) & 0xff,
         cms_rev1 & 0xff,
         cms_rev2);
 }
 if (max >= 0x80860006) {
  cpuid(0x80860003,
        (void *)&cpu_info[0],
        (void *)&cpu_info[4],
        (void *)&cpu_info[8],
        (void *)&cpu_info[12]);
  cpuid(0x80860004,
        (void *)&cpu_info[16],
        (void *)&cpu_info[20],
        (void *)&cpu_info[24],
        (void *)&cpu_info[28]);
  cpuid(0x80860005,
        (void *)&cpu_info[32],
        (void *)&cpu_info[36],
        (void *)&cpu_info[40],
        (void *)&cpu_info[44]);
  cpuid(0x80860006,
        (void *)&cpu_info[48],
        (void *)&cpu_info[52],
        (void *)&cpu_info[56],
        (void *)&cpu_info[60]);
  cpu_info[64] = '\0';
  pr_info("CPU: %s\n", cpu_info);
 }


 rdmsr(0x80860004, cap_mask, uk);
 wrmsr(0x80860004, ~0, uk);
 c->x86_capability[CPUID_1_EDX] = cpuid_edx(0x00000001);
 wrmsr(0x80860004, cap_mask, uk);


 set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);
}
