
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_exception_info {char const* name; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_INFO ;
 struct acpi_exception_info* acpi_ut_validate_exception (int ) ;

const char *acpi_format_exception(acpi_status status)
{
 const struct acpi_exception_info *exception;

 ACPI_FUNCTION_ENTRY();

 exception = acpi_ut_validate_exception(status);
 if (!exception) {



  ACPI_ERROR((AE_INFO,
       "Unknown exception code: 0x%8.8X", status));

  return ("UNKNOWN_STATUS_CODE");
 }

 return (exception->name);
}
