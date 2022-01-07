
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int do_clear_cpu_cap (struct cpuinfo_x86*,unsigned int) ;

void clear_cpu_cap(struct cpuinfo_x86 *c, unsigned int feature)
{
 do_clear_cpu_cap(c, feature);
}
