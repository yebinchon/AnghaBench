
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpuid (int,int*,int*,int*,int*) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static unsigned int longrun_get(unsigned int cpu)
{
 u32 eax, ebx, ecx, edx;

 if (cpu)
  return 0;

 cpuid(0x80860007, &eax, &ebx, &ecx, &edx);
 pr_debug("cpuid eax is %u\n", eax);

 return eax * 1000;
}
