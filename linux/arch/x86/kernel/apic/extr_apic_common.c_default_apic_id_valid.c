
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



int default_apic_id_valid(u32 apicid)
{
 return (apicid < 255);
}
