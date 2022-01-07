
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int microcode_update_cpu (unsigned int) ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static int mc_cpu_starting(unsigned int cpu)
{
 microcode_update_cpu(cpu);
 pr_debug("CPU%d added\n", cpu);
 return 0;
}
