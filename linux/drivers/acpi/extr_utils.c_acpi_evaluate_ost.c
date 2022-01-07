
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int * pointer; } ;
struct TYPE_3__ {void* value; } ;
union acpi_object {TYPE_2__ buffer; TYPE_1__ integer; int type; } ;
typedef void* u32 ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_buffer {scalar_t__ length; int * pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_TYPE_BUFFER ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

acpi_status
acpi_evaluate_ost(acpi_handle handle, u32 source_event, u32 status_code,
    struct acpi_buffer *status_buf)
{
 union acpi_object params[3] = {
  {.type = ACPI_TYPE_INTEGER,},
  {.type = ACPI_TYPE_INTEGER,},
  {.type = ACPI_TYPE_BUFFER,}
 };
 struct acpi_object_list arg_list = {3, params};

 params[0].integer.value = source_event;
 params[1].integer.value = status_code;
 if (status_buf != ((void*)0)) {
  params[2].buffer.pointer = status_buf->pointer;
  params[2].buffer.length = status_buf->length;
 } else {
  params[2].buffer.pointer = ((void*)0);
  params[2].buffer.length = 0;
 }

 return acpi_evaluate_object(handle, "_OST", &arg_list, ((void*)0));
}
