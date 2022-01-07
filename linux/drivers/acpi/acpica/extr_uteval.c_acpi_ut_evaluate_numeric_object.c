
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef int u64 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_BTYPE_INTEGER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ut_evaluate_object (struct acpi_namespace_node*,char const*,int ,union acpi_operand_object**) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_evaluate_numeric_object ;

acpi_status
acpi_ut_evaluate_numeric_object(const char *object_name,
    struct acpi_namespace_node *device_node,
    u64 *value)
{
 union acpi_operand_object *obj_desc;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ut_evaluate_numeric_object);

 status = acpi_ut_evaluate_object(device_node, object_name,
      ACPI_BTYPE_INTEGER, &obj_desc);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 *value = obj_desc->integer.value;



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
