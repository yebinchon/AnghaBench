
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int x86_model; int x86; int x86_cache_alignment; int x86_clflush_size; void** x86_capability; } ;


 int ACE_ENABLED ;
 int ACE_FCR ;
 int ACE_PRESENT ;
 size_t CPUID_C000_0001_EDX ;
 int MSR_VIA_FCR ;
 int MSR_VIA_RNG ;
 int RNG_ENABLE ;
 int RNG_ENABLED ;
 int RNG_PRESENT ;
 int X86_FEATURE_3DNOW ;
 int X86_FEATURE_CX8 ;
 int X86_FEATURE_REP_GOOD ;
 int cpu_detect_cache_sizes (struct cpuinfo_x86*) ;
 int cpuid_eax (int) ;
 void* cpuid_edx (int) ;
 int pr_info (char*) ;
 int rdmsr (int ,int,int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void init_c3(struct cpuinfo_x86 *c)
{
 u32 lo, hi;


 if (cpuid_eax(0xC0000000) >= 0xC0000001) {
  u32 tmp = cpuid_edx(0xC0000001);


  if ((tmp & (ACE_PRESENT | ACE_ENABLED)) == ACE_PRESENT) {
   rdmsr(MSR_VIA_FCR, lo, hi);
   lo |= ACE_FCR;
   wrmsr(MSR_VIA_FCR, lo, hi);
   pr_info("CPU: Enabled ACE h/w crypto\n");
  }


  if ((tmp & (RNG_PRESENT | RNG_ENABLED)) == RNG_PRESENT) {
   rdmsr(MSR_VIA_RNG, lo, hi);
   lo |= RNG_ENABLE;
   wrmsr(MSR_VIA_RNG, lo, hi);
   pr_info("CPU: Enabled h/w RNG\n");
  }




  c->x86_capability[CPUID_C000_0001_EDX] = cpuid_edx(0xC0000001);
 }
 if (c->x86 == 0x6 && c->x86_model >= 0xf) {
  c->x86_cache_alignment = c->x86_clflush_size * 2;
  set_cpu_cap(c, X86_FEATURE_REP_GOOD);
 }

 cpu_detect_cache_sizes(c);
}
