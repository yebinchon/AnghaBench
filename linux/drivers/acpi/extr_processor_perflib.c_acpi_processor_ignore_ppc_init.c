
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ignore_ppc ;

void acpi_processor_ignore_ppc_init(void)
{
 if (ignore_ppc < 0)
  ignore_ppc = 0;
}
