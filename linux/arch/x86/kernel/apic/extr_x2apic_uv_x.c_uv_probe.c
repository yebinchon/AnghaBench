
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * apic ;
 int apic_x2apic_uv_x ;

__attribute__((used)) static int uv_probe(void)
{
 return apic == &apic_x2apic_uv_x;
}
