
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int phys_cpu_present_map ;
 int physid_isset (int ,int ) ;

__attribute__((used)) static int noop_apic_id_registered(void)
{






 return physid_isset(0, phys_cpu_present_map);
}
