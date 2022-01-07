
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct TYPE_4__ {int arg_end; int pkg_end; scalar_t__ arg_count; scalar_t__ arg_list; union acpi_parse_object* op; } ;
struct TYPE_3__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_2__ parse_scope; TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct acpi_parse_state {int pkg_end; int scope; } ;
typedef int acpi_status ;


 int ACPI_DESC_TYPE_STATE_PSCOPE ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_MAX_PTR ;
 int ACPI_TO_POINTER (int ) ;
 scalar_t__ ACPI_VAR_ARGS ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;
 int acpi_ut_push_generic_state (int *,union acpi_generic_state*) ;
 int ps_push_scope ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ps_push_scope(struct acpi_parse_state *parser_state,
     union acpi_parse_object *op,
     u32 remaining_args, u32 arg_count)
{
 union acpi_generic_state *scope;

 ACPI_FUNCTION_TRACE_PTR(ps_push_scope, op);

 scope = acpi_ut_create_generic_state();
 if (!scope) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 scope->common.descriptor_type = ACPI_DESC_TYPE_STATE_PSCOPE;
 scope->parse_scope.op = op;
 scope->parse_scope.arg_list = remaining_args;
 scope->parse_scope.arg_count = arg_count;
 scope->parse_scope.pkg_end = parser_state->pkg_end;



 acpi_ut_push_generic_state(&parser_state->scope, scope);

 if (arg_count == ACPI_VAR_ARGS) {



  scope->parse_scope.arg_end = parser_state->pkg_end;
 } else {


  scope->parse_scope.arg_end = ACPI_TO_POINTER(ACPI_MAX_PTR);
 }

 return_ACPI_STATUS(AE_OK);
}
