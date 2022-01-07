
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {union acpi_generic_state* next; } ;
union acpi_generic_state {TYPE_2__ common; TYPE_1__ scope; } ;
struct acpi_walk_state {union acpi_generic_state* scope_info; } ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 int acpi_ut_get_type_name (int ) ;
 int ds_scope_stack_clear ;

void acpi_ds_scope_stack_clear(struct acpi_walk_state *walk_state)
{
 union acpi_generic_state *scope_info;

 ACPI_FUNCTION_NAME(ds_scope_stack_clear);

 while (walk_state->scope_info) {



  scope_info = walk_state->scope_info;
  walk_state->scope_info = scope_info->scope.next;

  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Popped object type (%s)\n",
      acpi_ut_get_type_name(scope_info->common.
       value)));

  acpi_ut_delete_generic_state(scope_info);
 }
}
