
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct cpuinfo_x86 {int x86; int x86_power; int cpuid_level; int x86_coreid_bits; } ;


 int X86_FEATURE_CONSTANT_TSC ;
 int X86_FEATURE_NONSTOP_TSC ;
 int X86_FEATURE_SYSENTER32 ;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int get_count_order (unsigned int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void early_init_zhaoxin(struct cpuinfo_x86 *c)
{
 if (c->x86 >= 0x6)
  set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);



 if (c->x86_power & (1 << 8)) {
  set_cpu_cap(c, X86_FEATURE_CONSTANT_TSC);
  set_cpu_cap(c, X86_FEATURE_NONSTOP_TSC);
 }

 if (c->cpuid_level >= 0x00000001) {
  u32 eax, ebx, ecx, edx;

  cpuid(0x00000001, &eax, &ebx, &ecx, &edx);





  if (edx & (1U << 28))
   c->x86_coreid_bits = get_count_order((ebx >> 16) & 0xff);
 }

}
