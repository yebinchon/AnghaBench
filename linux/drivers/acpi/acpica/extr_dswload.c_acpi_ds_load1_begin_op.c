
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {char* path; int name; } ;
struct TYPE_10__ {struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_4__ named; TYPE_3__ common; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {int opcode; int parse_flags; int parser_state; int aml; TYPE_6__* scope_info; int namespace_override; int method_node; struct acpi_namespace_node* deferred_node; TYPE_1__* op_info; union acpi_parse_object* op; } ;
struct TYPE_12__ {int integer; } ;
struct acpi_namespace_node {int type; int flags; TYPE_5__ name; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;
struct TYPE_9__ {int value; } ;
struct TYPE_13__ {TYPE_2__ common; } ;
struct TYPE_8__ {int flags; int object_type; } ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_ERROR_NAMESPACE (TYPE_6__*,char*,int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_OVERRIDE_IF_FOUND ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_PARSE_DEFERRED_OP ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int AE_ALREADY_EXISTS ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NOT_FOUND ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AML_NAMED ;

 int ANOBJ_IS_EXTERNAL ;
 int acpi_dm_add_op_to_external_list (union acpi_parse_object*,char*,int,int ,int ) ;
 int acpi_ds_scope_stack_push (struct acpi_namespace_node*,int,struct acpi_walk_state*) ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_ns_lookup (TYPE_6__*,char*,int,int ,int ,struct acpi_walk_state*,struct acpi_namespace_node**) ;
 int acpi_ns_opens_scope (int) ;
 union acpi_parse_object* acpi_ps_alloc_op (int const,int ) ;
 int acpi_ps_append_arg (int ,union acpi_parse_object*) ;
 char* acpi_ps_get_next_namestring (int *) ;
 int acpi_ps_get_parent_scope (int *) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_get_type_name (int) ;
 int ds_load1_begin_op ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
         union acpi_parse_object **out_op)
{
 union acpi_parse_object *op;
 struct acpi_namespace_node *node;
 acpi_status status;
 acpi_object_type object_type;
 char *path;
 u32 flags;

 ACPI_FUNCTION_TRACE_PTR(ds_load1_begin_op, walk_state->op);

 op = walk_state->op;
 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH, "Op=%p State=%p\n", op,
     walk_state));



 if (op) {
  if (!(walk_state->op_info->flags & AML_NAMED)) {
   *out_op = op;
   return_ACPI_STATUS(AE_OK);
  }



  if (op->common.node) {
   *out_op = op;
   return_ACPI_STATUS(AE_OK);
  }
 }

 path = acpi_ps_get_next_namestring(&walk_state->parser_state);



 object_type = walk_state->op_info->object_type;

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "State=%p Op=%p [%s]\n", walk_state, op,
     acpi_ut_get_type_name(object_type)));

 switch (walk_state->opcode) {
 case 128:





  status =
      acpi_ns_lookup(walk_state->scope_info, path, object_type,
       ACPI_IMODE_EXECUTE, ACPI_NS_SEARCH_PARENT,
       walk_state, &(node));
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR_NAMESPACE(walk_state->scope_info, path,
          status);
   return_ACPI_STATUS(status);
  }





  switch (node->type) {
  case 138:
  case 134:
  case 136:
  case 132:
  case 131:
  case 129:


   break;

  case 135:
  case 130:
  case 137:
   ACPI_DEBUG_PRINT((ACPI_DB_INFO,
       "Type override - [%4.4s] had invalid type (%s) "
       "for Scope operator, changed to type ANY\n",
       acpi_ut_get_node_name(node),
       acpi_ut_get_type_name(node->type)));

   node->type = 138;
   walk_state->scope_info->common.value = 138;
   break;

  case 133:




   if ((node == acpi_gbl_root_node) &&
       (walk_state->
        parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
    break;
   }



  default:



   ACPI_ERROR((AE_INFO,
        "Invalid type (%s) for target of "
        "Scope operator [%4.4s] (Cannot override)",
        acpi_ut_get_type_name(node->type),
        acpi_ut_get_node_name(node)));

   return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
  }
  break;

 default:
  if (walk_state->deferred_node) {



   node = walk_state->deferred_node;
   status = AE_OK;
   break;
  }





  if (walk_state->method_node) {
   node = ((void*)0);
   status = AE_OK;
   break;
  }

  flags = ACPI_NS_NO_UPSEARCH;
  if ((walk_state->opcode != 128) &&
      (!(walk_state->parse_flags & ACPI_PARSE_DEFERRED_OP))) {
   if (walk_state->namespace_override) {
    flags |= ACPI_NS_OVERRIDE_IF_FOUND;
    ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
        "[%s] Override allowed\n",
        acpi_ut_get_type_name
        (object_type)));
   } else {
    flags |= ACPI_NS_ERROR_IF_FOUND;
    ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
        "[%s] Cannot already exist\n",
        acpi_ut_get_type_name
        (object_type)));
   }
  } else {
   ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
       "[%s] Both Find or Create allowed\n",
       acpi_ut_get_type_name(object_type)));
  }







  status =
      acpi_ns_lookup(walk_state->scope_info, path, object_type,
       ACPI_IMODE_LOAD_PASS1, flags, walk_state,
       &node);
  if (ACPI_FAILURE(status)) {
   if (status == AE_ALREADY_EXISTS) {



    if (node->flags & ANOBJ_IS_EXTERNAL) {




     node->flags &= ~ANOBJ_IS_EXTERNAL;
     node->type = (u8) object_type;



     if (acpi_ns_opens_scope(object_type)) {
      status =
          acpi_ds_scope_stack_push
          (node, object_type,
           walk_state);
      if (ACPI_FAILURE(status)) {
       return_ACPI_STATUS
           (status);
      }
     }

     status = AE_OK;
    }
   }

   if (ACPI_FAILURE(status)) {
    ACPI_ERROR_NAMESPACE(walk_state->scope_info,
           path, status);
    return_ACPI_STATUS(status);
   }
  }
  break;
 }



 if (!op) {



  op = acpi_ps_alloc_op(walk_state->opcode, walk_state->aml);
  if (!op) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }
 }







 if (node) {




  op->common.node = node;
  op->named.name = node->name.integer;
 }

 acpi_ps_append_arg(acpi_ps_get_parent_scope(&walk_state->parser_state),
      op);
 *out_op = op;
 return_ACPI_STATUS(status);
}
