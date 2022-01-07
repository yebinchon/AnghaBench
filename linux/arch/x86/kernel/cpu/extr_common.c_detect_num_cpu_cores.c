
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86_max_cores; int cpuid_level; } ;


 int CONFIG_SMP ;
 int IS_ENABLED (int ) ;
 int cpuid_count (int,int ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

void detect_num_cpu_cores(struct cpuinfo_x86 *c)
{
 unsigned int eax, ebx, ecx, edx;

 c->x86_max_cores = 1;
 if (!IS_ENABLED(CONFIG_SMP) || c->cpuid_level < 4)
  return;

 cpuid_count(4, 0, &eax, &ebx, &ecx, &edx);
 if (eax & 0x1f)
  c->x86_max_cores = (eax >> 26) + 1;
}
