
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int * x86_capability; } ;


 size_t CPUID_8086_0001_EDX ;
 int cpuid_eax (int) ;
 int cpuid_edx (int) ;

__attribute__((used)) static void early_init_transmeta(struct cpuinfo_x86 *c)
{
 u32 xlvl;


 xlvl = cpuid_eax(0x80860000);
 if ((xlvl & 0xffff0000) == 0x80860000) {
  if (xlvl >= 0x80860001)
   c->x86_capability[CPUID_8086_0001_EDX] = cpuid_edx(0x80860001);
 }
}
