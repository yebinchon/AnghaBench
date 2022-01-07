
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int class; int value; struct acpi_namespace_node* object; } ;
struct TYPE_3__ {int type; int flags; } ;
union acpi_operand_object {TYPE_2__ reference; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_OBJECT (union acpi_operand_object*,int ,int ) ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_DUMP_ENTRY (union acpi_operand_object*,int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_LV_INFO ;







 int AE_AML_INTERNAL ;
 int AE_AML_NO_OPERAND ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_AML_CONSTANT ;
 int acpi_ds_store_object_to_local (int,int ,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ex_store_object_to_index (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_ex_store_object_to_node (union acpi_operand_object*,struct acpi_namespace_node*,struct acpi_walk_state*,int ) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ex_store ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_store(union acpi_operand_object *source_desc,
       union acpi_operand_object *dest_desc,
       struct acpi_walk_state *walk_state)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *ref_desc = dest_desc;

 ACPI_FUNCTION_TRACE_PTR(ex_store, dest_desc);



 if (!source_desc || !dest_desc) {
  ACPI_ERROR((AE_INFO, "Null parameter"));
  return_ACPI_STATUS(AE_AML_NO_OPERAND);
 }



 if (ACPI_GET_DESCRIPTOR_TYPE(dest_desc) == ACPI_DESC_TYPE_NAMED) {




  status = acpi_ex_store_object_to_node(source_desc,
            (struct
             acpi_namespace_node *)
            dest_desc, walk_state,
            ACPI_IMPLICIT_CONVERSION);

  return_ACPI_STATUS(status);
 }



 switch (dest_desc->common.type) {
 case 128:

  break;

 case 129:



  if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
   return_ACPI_STATUS(AE_OK);
  }



 default:



  ACPI_ERROR((AE_INFO,
       "Target is not a Reference or Constant object - [%s] %p",
       acpi_ut_get_object_type_name(dest_desc),
       dest_desc));

  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }
 switch (ref_desc->reference.class) {
 case 130:



  status = acpi_ex_store_object_to_node(source_desc,
            ref_desc->reference.
            object, walk_state,
            ACPI_IMPLICIT_CONVERSION);
  break;

 case 132:



  status =
      acpi_ex_store_object_to_index(source_desc, ref_desc,
        walk_state);
  break;

 case 131:
 case 134:



  status =
      acpi_ds_store_object_to_local(ref_desc->reference.class,
        ref_desc->reference.value,
        source_desc, walk_state);
  break;

 case 133:




  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "**** Write to Debug Object: Object %p [%s] ****:\n\n",
      source_desc,
      acpi_ut_get_object_type_name(source_desc)));

  ACPI_DEBUG_OBJECT(source_desc, 0, 0);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown Reference Class 0x%2.2X",
       ref_desc->reference.class));
  ACPI_DUMP_ENTRY(ref_desc, ACPI_LV_INFO);

  status = AE_AML_INTERNAL;
  break;
 }

 return_ACPI_STATUS(status);
}
