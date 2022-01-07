
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int x86; void** x86_capability; } ;


 int ACE_ENABLED ;
 int ACE_FCR ;
 int ACE_PRESENT ;
 size_t CPUID_C000_0001_EDX ;
 int MSR_ZHAOXIN_FCR57 ;
 int RNG_ENABLE ;
 int RNG_ENABLED ;
 int RNG_PRESENT ;
 int X86_FEATURE_REP_GOOD ;
 int cpu_detect_cache_sizes (struct cpuinfo_x86*) ;
 int cpuid_eax (int) ;
 void* cpuid_edx (int) ;
 int pr_info (char*) ;
 int rdmsr (int ,int,int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void init_zhaoxin_cap(struct cpuinfo_x86 *c)
{
 u32 lo, hi;


 if (cpuid_eax(0xC0000000) >= 0xC0000001) {
  u32 tmp = cpuid_edx(0xC0000001);


  if ((tmp & (ACE_PRESENT | ACE_ENABLED)) == ACE_PRESENT) {
   rdmsr(MSR_ZHAOXIN_FCR57, lo, hi);

   lo |= ACE_FCR;
   wrmsr(MSR_ZHAOXIN_FCR57, lo, hi);
   pr_info("CPU: Enabled ACE h/w crypto\n");
  }


  if ((tmp & (RNG_PRESENT | RNG_ENABLED)) == RNG_PRESENT) {
   rdmsr(MSR_ZHAOXIN_FCR57, lo, hi);

   lo |= RNG_ENABLE;
   wrmsr(MSR_ZHAOXIN_FCR57, lo, hi);
   pr_info("CPU: Enabled h/w RNG\n");
  }





  c->x86_capability[CPUID_C000_0001_EDX] = cpuid_edx(0xC0000001);
 }

 if (c->x86 >= 0x6)
  set_cpu_cap(c, X86_FEATURE_REP_GOOD);

 cpu_detect_cache_sizes(c);
}
