
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pointer; } ;
union acpi_object {TYPE_1__ string; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int acpi_get_handle (int ,char*,int *) ;
 int kfree (union acpi_object*) ;

acpi_status
acpi_bus_get_ejd(acpi_handle handle, acpi_handle *ejd)
{
 acpi_status status;
 acpi_handle tmp;
 struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 union acpi_object *obj;

 status = acpi_get_handle(handle, "_EJD", &tmp);
 if (ACPI_FAILURE(status))
  return status;

 status = acpi_evaluate_object(handle, "_EJD", ((void*)0), &buffer);
 if (ACPI_SUCCESS(status)) {
  obj = buffer.pointer;
  status = acpi_get_handle(ACPI_ROOT_OBJECT, obj->string.pointer,
      ejd);
  kfree(buffer.pointer);
 }
 return status;
}
