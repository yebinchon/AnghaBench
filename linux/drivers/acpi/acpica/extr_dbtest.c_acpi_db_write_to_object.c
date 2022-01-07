
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; int actual_type; } ;
union acpi_object {TYPE_1__ reference; int type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_namespace_node {int type; } ;
typedef int acpi_status ;


 int ACPI_CAST_PTR (int ,struct acpi_namespace_node*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 int FALSE ;
 int TRUE ;
 int acpi_evaluate_object (int ,int *,struct acpi_object_list*,int *) ;
 int acpi_format_exception (int ) ;
 int acpi_gbl_method_executing ;
 int acpi_handle ;
 int acpi_os_printf (char*,int ) ;
 int memcpy (union acpi_object*,union acpi_object*,int) ;
 int write_handle ;

__attribute__((used)) static acpi_status
acpi_db_write_to_object(struct acpi_namespace_node *node,
   union acpi_object *value)
{
 struct acpi_object_list param_objects;
 union acpi_object params[2];
 acpi_status status;

 params[0].type = ACPI_TYPE_LOCAL_REFERENCE;
 params[0].reference.actual_type = node->type;
 params[0].reference.handle = ACPI_CAST_PTR(acpi_handle, node);



 memcpy(&params[1], value, sizeof(union acpi_object));

 param_objects.count = 2;
 param_objects.pointer = params;

 acpi_gbl_method_executing = TRUE;
 status = acpi_evaluate_object(write_handle, ((void*)0), &param_objects, ((void*)0));
 acpi_gbl_method_executing = FALSE;

 if (ACPI_FAILURE(status)) {
  acpi_os_printf("Could not write to object, %s",
          acpi_format_exception(status));
 }

 return (status);
}
