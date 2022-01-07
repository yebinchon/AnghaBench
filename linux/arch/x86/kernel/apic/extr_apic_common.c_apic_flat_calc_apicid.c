
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



u32 apic_flat_calc_apicid(unsigned int cpu)
{
 return 1U << cpu;
}
