
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ut_copy_ipackage_to_ipackage (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ut_copy_simple_object (union acpi_operand_object*,union acpi_operand_object*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (scalar_t__) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_copy_iobject_to_iobject ;

acpi_status
acpi_ut_copy_iobject_to_iobject(union acpi_operand_object *source_desc,
    union acpi_operand_object **dest_desc,
    struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ut_copy_iobject_to_iobject);



 *dest_desc = acpi_ut_create_internal_object(source_desc->common.type);
 if (!*dest_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 if (source_desc->common.type == ACPI_TYPE_PACKAGE) {
  status =
      acpi_ut_copy_ipackage_to_ipackage(source_desc, *dest_desc,
            walk_state);
 } else {
  status = acpi_ut_copy_simple_object(source_desc, *dest_desc);
 }



 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(*dest_desc);
 }

 return_ACPI_STATUS(status);
}
