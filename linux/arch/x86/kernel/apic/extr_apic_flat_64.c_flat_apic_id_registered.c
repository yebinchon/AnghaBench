
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int phys_cpu_present_map ;
 int physid_isset (int ,int ) ;
 int read_xapic_id () ;

__attribute__((used)) static int flat_apic_id_registered(void)
{
 return physid_isset(read_xapic_id(), phys_cpu_present_map);
}
