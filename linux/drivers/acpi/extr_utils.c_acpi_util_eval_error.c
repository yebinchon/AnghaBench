
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int member_0; char* member_1; } ;
typedef int prefix ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FULL_PATHNAME ;
 int acpi_format_exception (int ) ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;

__attribute__((used)) static void
acpi_util_eval_error(acpi_handle h, acpi_string p, acpi_status s)
{







 return;

}
