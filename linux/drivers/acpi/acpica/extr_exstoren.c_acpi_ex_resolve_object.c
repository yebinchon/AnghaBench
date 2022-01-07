
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int class; } ;
struct TYPE_3__ {int const type; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
struct acpi_walk_state {int opcode; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;


 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_TABLE ;







 int const ACPI_TYPE_LOCAL_REFERENCE ;



 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AML_COPY_OBJECT_OP ;
 int acpi_ex_resolve_to_value (union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int) ;
 int ex_resolve_object ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_resolve_object(union acpi_operand_object **source_desc_ptr,
         acpi_object_type target_type,
         struct acpi_walk_state *walk_state)
{
 union acpi_operand_object *source_desc = *source_desc_ptr;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ex_resolve_object);



 switch (target_type) {
 case 136:
 case 130:
 case 133:
 case 132:




 case 135:
 case 128:
 case 137:





  if (source_desc->common.type == ACPI_TYPE_LOCAL_REFERENCE) {



   status =
       acpi_ex_resolve_to_value(source_desc_ptr,
           walk_state);
   if (ACPI_FAILURE(status)) {
    break;
   }
  }



  if (walk_state->opcode == AML_COPY_OBJECT_OP) {
   break;
  }



  if ((source_desc->common.type != 135) &&
      (source_desc->common.type != 137) &&
      (source_desc->common.type != 128) &&
      !((source_desc->common.type == ACPI_TYPE_LOCAL_REFERENCE) &&
        (source_desc->reference.class == ACPI_REFCLASS_TABLE))) {



   ACPI_ERROR((AE_INFO,
        "Cannot assign type [%s] to [%s] (must be type Int/Str/Buf)",
        acpi_ut_get_object_type_name(source_desc),
        acpi_ut_get_type_name(target_type)));

   status = AE_AML_OPERAND_TYPE;
  }
  break;

 case 134:
 case 131:




  ACPI_ERROR((AE_INFO, "Store into an unresolved Alias object"));
  status = AE_AML_INTERNAL;
  break;

 case 129:
 default:




  break;
 }

 return_ACPI_STATUS(status);
}
