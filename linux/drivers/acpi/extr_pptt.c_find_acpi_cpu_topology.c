
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_acpi_cpu_topology_tag (unsigned int,int,int ) ;

int find_acpi_cpu_topology(unsigned int cpu, int level)
{
 return find_acpi_cpu_topology_tag(cpu, level, 0);
}
