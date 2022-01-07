
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_generic_state* next; } ;
union acpi_generic_state {TYPE_1__ common; } ;


 int ACPI_FUNCTION_ENTRY () ;

void
acpi_ut_push_generic_state(union acpi_generic_state **list_head,
      union acpi_generic_state *state)
{
 ACPI_FUNCTION_ENTRY();



 state->common.next = *list_head;
 *list_head = state;
 return;
}
