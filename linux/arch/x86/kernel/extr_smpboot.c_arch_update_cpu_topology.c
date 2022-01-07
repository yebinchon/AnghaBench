
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int x86_topology_update ;

int arch_update_cpu_topology(void)
{
 int retval = x86_topology_update;

 x86_topology_update = 0;
 return retval;
}
