
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int const type; } ;
union acpi_operand_object {TYPE_2__ common; } ;
typedef int u8 ;
struct acpi_walk_state {scalar_t__ opcode; int result_obj; } ;
struct TYPE_3__ {int ascii; } ;
struct acpi_namespace_node {int type; TYPE_1__ name; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int AE_AML_TARGET_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 scalar_t__ AML_COPY_OBJECT_OP ;
 scalar_t__ AML_STORE_OP ;
 int acpi_ex_resolve_object (union acpi_operand_object**,int,struct acpi_walk_state*) ;
 int acpi_ex_store_direct_to_node (union acpi_operand_object*,struct acpi_namespace_node*,struct acpi_walk_state*) ;
 int acpi_ex_store_object_to_object (union acpi_operand_object*,union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ;
 int acpi_ex_write_data_to_field (union acpi_operand_object*,union acpi_operand_object*,int *) ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int const) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ns_get_type (struct acpi_namespace_node*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int) ;
 int ex_store_object_to_node ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
        struct acpi_namespace_node *node,
        struct acpi_walk_state *walk_state,
        u8 implicit_conversion)
{
 acpi_status status = AE_OK;
 union acpi_operand_object *target_desc;
 union acpi_operand_object *new_desc;
 acpi_object_type target_type;

 ACPI_FUNCTION_TRACE_PTR(ex_store_object_to_node, source_desc);



 target_type = acpi_ns_get_type(node);
 target_desc = acpi_ns_get_attached_object(node);

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Storing %p [%s] to node %p [%s]\n",
     source_desc,
     acpi_ut_get_object_type_name(source_desc), node,
     acpi_ut_get_type_name(target_type)));



 if (walk_state->opcode != AML_COPY_OBJECT_OP) {
  switch (target_type) {
  case 133:





   if (walk_state->opcode == AML_STORE_OP) {
    if (source_desc->common.type !=
        133) {
     ACPI_ERROR((AE_INFO,
          "Cannot assign type [%s] to [Package] "
          "(source must be type Pkg)",
          acpi_ut_get_object_type_name
          (source_desc)));

     return_ACPI_STATUS(AE_AML_TARGET_TYPE);
    }
    break;
   }



  case 140:
  case 139:
  case 134:
  case 130:
  case 132:
  case 131:
  case 128:

   ACPI_ERROR((AE_INFO,
        "Target must be [Buffer/Integer/String/Reference]"
        ", found [%s] (%4.4s)",
        acpi_ut_get_type_name(node->type),
        node->name.ascii));

   return_ACPI_STATUS(AE_AML_TARGET_TYPE);

  default:
   break;
  }
 }





 status = acpi_ex_resolve_object(&source_desc, target_type, walk_state);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 switch (target_type) {




 case 138:
 case 129:
 case 142:

  if ((walk_state->opcode == AML_COPY_OBJECT_OP) ||
      !implicit_conversion) {





   status =
       acpi_ex_store_direct_to_node(source_desc, node,
        walk_state);
   break;
  }



  status =
      acpi_ex_store_object_to_object(source_desc, target_desc,
         &new_desc, walk_state);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  if (new_desc != target_desc) {
   status =
       acpi_ns_attach_object(node, new_desc,
        new_desc->common.type);

   ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
       "Store type [%s] into [%s] via Convert/Attach\n",
       acpi_ut_get_object_type_name
       (source_desc),
       acpi_ut_get_object_type_name
       (new_desc)));
  }
  break;

 case 141:
 case 135:
 case 137:
 case 136:






  status = acpi_ex_write_data_to_field(source_desc, target_desc,
           &walk_state->result_obj);
  break;

 default:
  status =
      acpi_ex_store_direct_to_node(source_desc, node, walk_state);
  break;
 }

 return_ACPI_STATUS(status);
}
