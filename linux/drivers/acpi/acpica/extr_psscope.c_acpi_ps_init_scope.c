
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct TYPE_3__ {int pkg_end; int arg_end; int arg_count; union acpi_parse_object* op; } ;
struct TYPE_4__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_1__ parse_scope; TYPE_2__ common; } ;
struct acpi_parse_state {union acpi_parse_object* start_op; union acpi_generic_state* scope; int aml_end; } ;
typedef int acpi_status ;


 int ACPI_DESC_TYPE_STATE_RPSCOPE ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 int ACPI_VAR_ARGS ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;
 int ps_init_scope ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ps_init_scope(struct acpi_parse_state * parser_state,
     union acpi_parse_object * root_op)
{
 union acpi_generic_state *scope;

 ACPI_FUNCTION_TRACE_PTR(ps_init_scope, root_op);

 scope = acpi_ut_create_generic_state();
 if (!scope) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 scope->common.descriptor_type = ACPI_DESC_TYPE_STATE_RPSCOPE;
 scope->parse_scope.op = root_op;
 scope->parse_scope.arg_count = ACPI_VAR_ARGS;
 scope->parse_scope.arg_end = parser_state->aml_end;
 scope->parse_scope.pkg_end = parser_state->aml_end;

 parser_state->scope = scope;
 parser_state->start_op = root_op;

 return_ACPI_STATUS(AE_OK);
}
