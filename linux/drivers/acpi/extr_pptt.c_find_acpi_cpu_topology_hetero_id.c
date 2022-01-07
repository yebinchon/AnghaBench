
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_PPTT_ACPI_IDENTICAL ;
 int PPTT_ABORT_PACKAGE ;
 int find_acpi_cpu_topology_tag (unsigned int,int ,int ) ;

int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
{
 return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
       ACPI_PPTT_ACPI_IDENTICAL);
}
