
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; } ;
struct TYPE_3__ {scalar_t__ count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ reference; TYPE_1__ package; } ;
typedef size_t u32 ;
struct acpi_object_list {int dummy; } ;
struct acpi_handle_list {size_t count; scalar_t__* handles; } ;
struct acpi_buffer {scalar_t__ length; union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_MAX_HANDLES ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_BAD_DATA ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_NULL_ENTRY ;
 int AE_OK ;
 int acpi_evaluate_object (int ,int ,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_util_eval_error (int ,int ,int ) ;
 int kfree (union acpi_object*) ;

acpi_status
acpi_evaluate_reference(acpi_handle handle,
   acpi_string pathname,
   struct acpi_object_list *arguments,
   struct acpi_handle_list *list)
{
 acpi_status status = AE_OK;
 union acpi_object *package = ((void*)0);
 union acpi_object *element = ((void*)0);
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 u32 i = 0;


 if (!list) {
  return AE_BAD_PARAMETER;
 }



 status = acpi_evaluate_object(handle, pathname, arguments, &buffer);
 if (ACPI_FAILURE(status))
  goto end;

 package = buffer.pointer;

 if ((buffer.length == 0) || !package) {
  status = AE_BAD_DATA;
  acpi_util_eval_error(handle, pathname, status);
  goto end;
 }
 if (package->type != ACPI_TYPE_PACKAGE) {
  status = AE_BAD_DATA;
  acpi_util_eval_error(handle, pathname, status);
  goto end;
 }
 if (!package->package.count) {
  status = AE_BAD_DATA;
  acpi_util_eval_error(handle, pathname, status);
  goto end;
 }

 if (package->package.count > ACPI_MAX_HANDLES) {
  kfree(package);
  return AE_NO_MEMORY;
 }
 list->count = package->package.count;



 for (i = 0; i < list->count; i++) {

  element = &(package->package.elements[i]);

  if (element->type != ACPI_TYPE_LOCAL_REFERENCE) {
   status = AE_BAD_DATA;
   acpi_util_eval_error(handle, pathname, status);
   break;
  }

  if (!element->reference.handle) {
   status = AE_NULL_ENTRY;
   acpi_util_eval_error(handle, pathname, status);
   break;
  }


  list->handles[i] = element->reference.handle;
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found reference [%p]\n",
      list->handles[i]));
 }

      end:
 if (ACPI_FAILURE(status)) {
  list->count = 0;

 }

 kfree(buffer.pointer);

 return status;
}
