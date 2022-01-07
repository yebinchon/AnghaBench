
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {void* length; int * data; } ;
struct TYPE_12__ {int aml_opcode; TYPE_2__* parent; int aml_op_name; } ;
union acpi_parse_object {TYPE_4__ named; TYPE_3__ common; } ;
typedef int u8 ;
typedef void* u32 ;
struct TYPE_16__ {int * pkg_end; int * aml; } ;
struct acpi_walk_state {TYPE_7__ parser_state; TYPE_6__* control_state; int arg_count; int pass_number; int arg_types; int * aml; } ;
typedef int acpi_status ;
struct TYPE_14__ {int * package_end; } ;
struct TYPE_15__ {TYPE_5__ control; } ;
struct TYPE_10__ {int aml_opcode; } ;
struct TYPE_11__ {TYPE_1__ common; } ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int ACPI_IMODE_LOAD_PASS2 ;
 int ACPI_POSSIBLE_METHOD_CALL ;
 int AE_OK ;





 int AML_NAME_OP ;






 int ASL_CV_CAPTURE_COMMENTS (struct acpi_walk_state*) ;
 int GET_CURRENT_ARG_TYPE (int ) ;
 int INCREMENT_ARG_LIST (int ) ;
 int acpi_ps_append_arg (union acpi_parse_object*,union acpi_parse_object*) ;
 int acpi_ps_get_next_arg (struct acpi_walk_state*,TYPE_7__*,int ,union acpi_parse_object**) ;
 int acpi_ps_get_next_namepath (struct acpi_walk_state*,TYPE_7__*,union acpi_parse_object*,int ) ;
 int acpi_ps_get_next_simple_arg (TYPE_7__*,int ,union acpi_parse_object*) ;
 int ps_get_arguments ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ps_get_arguments(struct acpi_walk_state *walk_state,
        u8 * aml_op_start, union acpi_parse_object *op)
{
 acpi_status status = AE_OK;
 union acpi_parse_object *arg = ((void*)0);

 ACPI_FUNCTION_TRACE_PTR(ps_get_arguments, walk_state);

 ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
     "Get arguments for opcode [%s]\n",
     op->common.aml_op_name));

 switch (op->common.aml_opcode) {
 case 137:
 case 128:
 case 136:
 case 132:
 case 131:



  acpi_ps_get_next_simple_arg(&(walk_state->parser_state),
         GET_CURRENT_ARG_TYPE(walk_state->
         arg_types),
         op);
  break;

 case 135:

  status = acpi_ps_get_next_namepath(walk_state,
         &(walk_state->parser_state),
         op,
         ACPI_POSSIBLE_METHOD_CALL);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

  walk_state->arg_types = 0;
  break;

 default:



  while (GET_CURRENT_ARG_TYPE(walk_state->arg_types) &&
         !walk_state->arg_count) {
   walk_state->aml = walk_state->parser_state.aml;

   switch (op->common.aml_opcode) {
   case 134:
   case 138:
   case 133:
   case 130:
   case 129:

    break;

   default:

    ASL_CV_CAPTURE_COMMENTS(walk_state);
    break;
   }

   status =
       acpi_ps_get_next_arg(walk_state,
       &(walk_state->parser_state),
       GET_CURRENT_ARG_TYPE
       (walk_state->arg_types), &arg);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }

   if (arg) {
    acpi_ps_append_arg(op, arg);
   }

   INCREMENT_ARG_LIST(walk_state->arg_types);
  }

  ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
      "Final argument count: %8.8X pass %u\n",
      walk_state->arg_count,
      walk_state->pass_number));



  switch (op->common.aml_opcode) {
  case 134:






   op->named.data = walk_state->parser_state.aml;
   op->named.length = (u32)
       (walk_state->parser_state.pkg_end -
        walk_state->parser_state.aml);



   walk_state->parser_state.aml =
       walk_state->parser_state.pkg_end;
   walk_state->arg_count = 0;
   break;

  case 138:
  case 133:
  case 130:

   if ((op->common.parent) &&
       (op->common.parent->common.aml_opcode ==
        AML_NAME_OP)
       && (walk_state->pass_number <=
    ACPI_IMODE_LOAD_PASS2)) {
    ACPI_DEBUG_PRINT((ACPI_DB_PARSE,
        "Setup Package/Buffer: Pass %u, AML Ptr: %p\n",
        walk_state->pass_number,
        aml_op_start));





    op->named.data = aml_op_start;
    op->named.length = (u32)
        (walk_state->parser_state.pkg_end -
         aml_op_start);



    walk_state->parser_state.aml =
        walk_state->parser_state.pkg_end;
    walk_state->arg_count = 0;
   }
   break;

  case 129:

   if (walk_state->control_state) {
    walk_state->control_state->control.package_end =
        walk_state->parser_state.pkg_end;
   }
   break;

  default:



   break;
  }

  break;
 }

 return_ACPI_STATUS(AE_OK);
}
