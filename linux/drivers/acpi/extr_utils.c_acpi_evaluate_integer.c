
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct acpi_object_list {int dummy; } ;
struct acpi_buffer {int length; union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int AE_BAD_DATA ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_evaluate_object (int ,int ,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_util_eval_error (int ,int ,int ) ;

acpi_status
acpi_evaluate_integer(acpi_handle handle,
        acpi_string pathname,
        struct acpi_object_list *arguments, unsigned long long *data)
{
 acpi_status status = AE_OK;
 union acpi_object element;
 struct acpi_buffer buffer = { 0, ((void*)0) };

 if (!data)
  return AE_BAD_PARAMETER;

 buffer.length = sizeof(union acpi_object);
 buffer.pointer = &element;
 status = acpi_evaluate_object(handle, pathname, arguments, &buffer);
 if (ACPI_FAILURE(status)) {
  acpi_util_eval_error(handle, pathname, status);
  return status;
 }

 if (element.type != ACPI_TYPE_INTEGER) {
  acpi_util_eval_error(handle, pathname, AE_BAD_DATA);
  return AE_BAD_DATA;
 }

 *data = element.integer.value;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Return value [%llu]\n", *data));

 return AE_OK;
}
