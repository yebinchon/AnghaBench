
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {union acpi_generic_state* next; } ;
union acpi_generic_state {TYPE_1__ common; } ;
struct TYPE_4__ {scalar_t__ scope; } ;
struct acpi_walk_state {scalar_t__ descriptor_type; union acpi_generic_state* results; union acpi_generic_state* scope_info; union acpi_generic_state* control_state; TYPE_2__ parser_state; } ;


 scalar_t__ ACPI_DESC_TYPE_WALK ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (struct acpi_walk_state*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_walk_state*) ;
 int AE_INFO ;
 int acpi_ps_cleanup_scope (TYPE_2__*) ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 int ds_delete_walk_state ;
 int return_VOID ;

void acpi_ds_delete_walk_state(struct acpi_walk_state *walk_state)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_TRACE_PTR(ds_delete_walk_state, walk_state);

 if (!walk_state) {
  return_VOID;
 }

 if (walk_state->descriptor_type != ACPI_DESC_TYPE_WALK) {
  ACPI_ERROR((AE_INFO, "%p is not a valid walk state",
       walk_state));
  return_VOID;
 }



 if (walk_state->parser_state.scope) {
  ACPI_ERROR((AE_INFO, "%p walk still has a scope list",
       walk_state));
  acpi_ps_cleanup_scope(&walk_state->parser_state);
 }



 while (walk_state->control_state) {
  state = walk_state->control_state;
  walk_state->control_state = state->common.next;

  acpi_ut_delete_generic_state(state);
 }



 while (walk_state->scope_info) {
  state = walk_state->scope_info;
  walk_state->scope_info = state->common.next;

  acpi_ut_delete_generic_state(state);
 }



 while (walk_state->results) {
  state = walk_state->results;
  walk_state->results = state->common.next;

  acpi_ut_delete_generic_state(state);
 }

 ACPI_FREE(walk_state);
 return_VOID;
}
