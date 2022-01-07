
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int ACPI_PROCESSOR_NOTIFY_PERFORMANCE ;
 int acpi_evaluate_ost (int ,int ,int,int *) ;
 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static void acpi_processor_ppc_ost(acpi_handle handle, int status)
{
 if (acpi_has_method(handle, "_OST"))
  acpi_evaluate_ost(handle, ACPI_PROCESSOR_NOTIFY_PERFORMANCE,
      status, ((void*)0));
}
