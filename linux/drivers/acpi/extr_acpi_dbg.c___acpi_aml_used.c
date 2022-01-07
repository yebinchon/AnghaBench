
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ usages; } ;


 TYPE_1__ acpi_aml_io ;

__attribute__((used)) static inline bool __acpi_aml_used(void)
{
 return acpi_aml_io.usages ? 1 : 0;
}
