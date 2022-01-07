
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int apic_default_calc_apicid (unsigned int) ;
 int uv_apicid_hibits ;

__attribute__((used)) static u32 apic_uv_calc_apicid(unsigned int cpu)
{
 return apic_default_calc_apicid(cpu) | uv_apicid_hibits;
}
