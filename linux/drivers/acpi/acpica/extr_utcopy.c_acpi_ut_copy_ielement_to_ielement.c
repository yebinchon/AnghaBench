
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flags; int type; } ;
struct TYPE_8__ {int count; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_3__ package; } ;
struct TYPE_10__ {size_t index; union acpi_operand_object* this_target_obj; TYPE_2__* dest_object; } ;
union acpi_generic_state {TYPE_5__ pkg; } ;
typedef int u8 ;
typedef size_t u32 ;
typedef int acpi_status ;
struct TYPE_6__ {int * elements; } ;
struct TYPE_7__ {TYPE_1__ package; } ;




 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ut_copy_simple_object (union acpi_operand_object*,union acpi_operand_object*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 union acpi_operand_object* acpi_ut_create_package_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;

__attribute__((used)) static acpi_status
acpi_ut_copy_ielement_to_ielement(u8 object_type,
      union acpi_operand_object *source_object,
      union acpi_generic_state *state,
      void *context)
{
 acpi_status status = AE_OK;
 u32 this_index;
 union acpi_operand_object **this_target_ptr;
 union acpi_operand_object *target_object;

 ACPI_FUNCTION_ENTRY();

 this_index = state->pkg.index;
 this_target_ptr = (union acpi_operand_object **)
     &state->pkg.dest_object->package.elements[this_index];

 switch (object_type) {
 case 128:



  if (source_object) {



   target_object =
       acpi_ut_create_internal_object(source_object->
          common.type);
   if (!target_object) {
    return (AE_NO_MEMORY);
   }

   status =
       acpi_ut_copy_simple_object(source_object,
             target_object);
   if (ACPI_FAILURE(status)) {
    goto error_exit;
   }

   *this_target_ptr = target_object;
  } else {


   *this_target_ptr = ((void*)0);
  }
  break;

 case 129:




  target_object =
      acpi_ut_create_package_object(source_object->package.count);
  if (!target_object) {
   return (AE_NO_MEMORY);
  }

  target_object->common.flags = source_object->common.flags;



  state->pkg.this_target_obj = target_object;



  *this_target_ptr = target_object;
  break;

 default:

  return (AE_BAD_PARAMETER);
 }

 return (status);

error_exit:
 acpi_ut_remove_reference(target_object);
 return (status);
}
