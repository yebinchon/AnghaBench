
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long (* acpi_processor_get_throttling ) (struct acpi_processor*) ;} ;
struct acpi_processor {TYPE_1__ throttling; } ;


 long stub1 (struct acpi_processor*) ;

__attribute__((used)) static long __acpi_processor_get_throttling(void *data)
{
 struct acpi_processor *pr = data;

 return pr->throttling.acpi_processor_get_throttling(pr);
}
