
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end_local_APIC_setup () ;
 int setup_local_APIC () ;

void apic_ap_setup(void)
{
 setup_local_APIC();
 end_local_APIC_setup();
}
