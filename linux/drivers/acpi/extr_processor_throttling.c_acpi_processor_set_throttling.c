
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int dummy; } ;


 int __acpi_processor_set_throttling (struct acpi_processor*,int,int,int) ;

int acpi_processor_set_throttling(struct acpi_processor *pr, int state,
      bool force)
{
 return __acpi_processor_set_throttling(pr, state, force, 0);
}
