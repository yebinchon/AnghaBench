
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ thread; } ;


 int ACPI_AML_CLOSED ;
 unsigned long ACPI_AML_KERN ;
 int ACPI_AML_OPENED ;
 int __acpi_aml_running () ;
 TYPE_1__ acpi_aml_io ;
 scalar_t__ current ;

__attribute__((used)) static inline bool __acpi_aml_access_ok(unsigned long flag)
{







 if (!(acpi_aml_io.flags & ACPI_AML_OPENED) ||
     (acpi_aml_io.flags & ACPI_AML_CLOSED) ||
     !__acpi_aml_running())
  return 0;
 if ((flag & ACPI_AML_KERN) &&
     current != acpi_aml_io.thread)
  return 0;
 return 1;
}
