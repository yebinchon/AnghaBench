
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int phys_cpu_present_map ;
 int physid_isset (int ,int ) ;
 int read_apic_id () ;

__attribute__((used)) static int default_apic_id_registered(void)
{
 return physid_isset(read_apic_id(), phys_cpu_present_map);
}
