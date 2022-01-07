
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; int actual_type; } ;
union acpi_object {int type; TYPE_1__ reference; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_namespace_node {int type; } ;
struct acpi_buffer {scalar_t__ pointer; int length; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_CAST_PTR (int ,struct acpi_namespace_node*) ;
 scalar_t__ ACPI_FAILURE (int ) ;


 int ACPI_TYPE_LOCAL_REFERENCE ;


 int AE_TYPE ;
 int FALSE ;
 int TRUE ;
 int acpi_evaluate_object (int ,int *,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_format_exception (int ) ;
 int acpi_gbl_method_executing ;
 int acpi_handle ;
 int acpi_os_free (scalar_t__) ;
 int acpi_os_printf (char*,int ,...) ;
 int acpi_ut_get_type_name (int) ;
 int read_handle ;

__attribute__((used)) static acpi_status
acpi_db_read_from_object(struct acpi_namespace_node *node,
    acpi_object_type expected_type,
    union acpi_object **value)
{
 union acpi_object *ret_value;
 struct acpi_object_list param_objects;
 union acpi_object params[2];
 struct acpi_buffer return_obj;
 acpi_status status;

 params[0].type = ACPI_TYPE_LOCAL_REFERENCE;
 params[0].reference.actual_type = node->type;
 params[0].reference.handle = ACPI_CAST_PTR(acpi_handle, node);

 param_objects.count = 1;
 param_objects.pointer = params;

 return_obj.length = ACPI_ALLOCATE_BUFFER;

 acpi_gbl_method_executing = TRUE;
 status = acpi_evaluate_object(read_handle, ((void*)0),
          &param_objects, &return_obj);

 acpi_gbl_method_executing = FALSE;
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("Could not read from object, %s",
          acpi_format_exception(status));
  return (status);
 }

 ret_value = (union acpi_object *)return_obj.pointer;

 switch (ret_value->type) {
 case 130:
 case 131:
 case 128:
 case 129:





  if (ret_value->type != expected_type) {
   acpi_os_printf
       (" Type mismatch: Expected %s, Received %s",
        acpi_ut_get_type_name(expected_type),
        acpi_ut_get_type_name(ret_value->type));

   acpi_os_free(return_obj.pointer);
   return (AE_TYPE);
  }

  *value = ret_value;
  break;

 default:

  acpi_os_printf(" Unsupported return object type, %s",
          acpi_ut_get_type_name(ret_value->type));

  acpi_os_free(return_obj.pointer);
  return (AE_TYPE);
 }

 return (status);
}
