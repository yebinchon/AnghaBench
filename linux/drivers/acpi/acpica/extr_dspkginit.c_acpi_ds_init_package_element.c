
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_6__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_1__ package; TYPE_3__ common; } ;
struct TYPE_5__ {union acpi_operand_object** this_target_obj; } ;
union acpi_generic_state {TYPE_2__ pkg; } ;
typedef int u8 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_resolve_package_element (union acpi_operand_object**) ;
 int ds_init_package_element ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_init_package_element(u8 object_type,
        union acpi_operand_object *source_object,
        union acpi_generic_state *state, void *context)
{
 union acpi_operand_object **element_ptr;

 ACPI_FUNCTION_TRACE(ds_init_package_element);

 if (!source_object) {
  return_ACPI_STATUS(AE_OK);
 }







 if (context) {



  element_ptr = (union acpi_operand_object **)context;
 } else {


  element_ptr = state->pkg.this_target_obj;
 }



 if (source_object->common.type == ACPI_TYPE_LOCAL_REFERENCE) {



  acpi_ds_resolve_package_element(element_ptr);
 } else if (source_object->common.type == ACPI_TYPE_PACKAGE) {
  source_object->package.flags |= AOPOBJ_DATA_VALID;
 }

 return_ACPI_STATUS(AE_OK);
}
