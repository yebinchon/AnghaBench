
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int per_cpu (int ,unsigned int) ;
 int x86_cpu_to_logical_apicid ;

__attribute__((used)) static u32 x2apic_calc_apicid(unsigned int cpu)
{
 return per_cpu(x86_cpu_to_logical_apicid, cpu);
}
