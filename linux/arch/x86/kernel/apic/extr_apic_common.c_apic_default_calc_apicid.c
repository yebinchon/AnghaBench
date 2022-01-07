
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int per_cpu (int ,unsigned int) ;
 int x86_cpu_to_apicid ;

u32 apic_default_calc_apicid(unsigned int cpu)
{
 return per_cpu(x86_cpu_to_apicid, cpu);
}
