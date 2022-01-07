
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_apic_id () ;

int hard_smp_processor_id(void)
{
 return read_apic_id();
}
