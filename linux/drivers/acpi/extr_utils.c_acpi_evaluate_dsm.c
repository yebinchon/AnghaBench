
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * elements; scalar_t__ count; } ;
struct TYPE_5__ {void* value; } ;
struct TYPE_4__ {int length; int * pointer; } ;
union acpi_object {TYPE_3__ package; void* type; TYPE_2__ integer; TYPE_1__ buffer; } ;
typedef int u8 ;
typedef void* u64 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int guid_t ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 void* ACPI_TYPE_BUFFER ;
 void* ACPI_TYPE_INTEGER ;
 void* ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_handle_warn (int ,char*,scalar_t__) ;

union acpi_object *
acpi_evaluate_dsm(acpi_handle handle, const guid_t *guid, u64 rev, u64 func,
    union acpi_object *argv4)
{
 acpi_status ret;
 struct acpi_buffer buf = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 union acpi_object params[4];
 struct acpi_object_list input = {
  .count = 4,
  .pointer = params,
 };

 params[0].type = ACPI_TYPE_BUFFER;
 params[0].buffer.length = 16;
 params[0].buffer.pointer = (u8 *)guid;
 params[1].type = ACPI_TYPE_INTEGER;
 params[1].integer.value = rev;
 params[2].type = ACPI_TYPE_INTEGER;
 params[2].integer.value = func;
 if (argv4) {
  params[3] = *argv4;
 } else {
  params[3].type = ACPI_TYPE_PACKAGE;
  params[3].package.count = 0;
  params[3].package.elements = ((void*)0);
 }

 ret = acpi_evaluate_object(handle, "_DSM", &input, &buf);
 if (ACPI_SUCCESS(ret))
  return (union acpi_object *)buf.pointer;

 if (ret != AE_NOT_FOUND)
  acpi_handle_warn(handle,
    "failed to evaluate _DSM (0x%x)\n", ret);

 return ((void*)0);
}
