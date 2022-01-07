
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD ;
 int check_acpi_cpu_flag (unsigned int,int,int ) ;

int acpi_pptt_cpu_is_thread(unsigned int cpu)
{
 return check_acpi_cpu_flag(cpu, 2, ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD);
}
