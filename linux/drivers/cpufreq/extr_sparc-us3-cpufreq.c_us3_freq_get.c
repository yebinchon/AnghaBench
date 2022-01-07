
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_current_freq (unsigned int,unsigned long) ;
 int read_safari_cfg ;
 scalar_t__ smp_call_function_single (unsigned int,int ,unsigned long*,int) ;

__attribute__((used)) static unsigned int us3_freq_get(unsigned int cpu)
{
 unsigned long reg;

 if (smp_call_function_single(cpu, read_safari_cfg, &reg, 1))
  return 0;
 return get_current_freq(cpu, reg);
}
