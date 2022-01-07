
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int ACPI_AML_OPEN ;
 TYPE_1__ acpi_aml_io ;

__attribute__((used)) static inline bool __acpi_aml_opened(void)
{
 if (acpi_aml_io.flags & ACPI_AML_OPEN)
  return 1;
 return 0;
}
