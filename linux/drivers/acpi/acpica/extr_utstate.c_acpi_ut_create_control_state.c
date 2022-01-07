
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int descriptor_type; } ;
union acpi_generic_state {TYPE_1__ common; } ;


 int ACPI_CONTROL_CONDITIONAL_EXECUTING ;
 int ACPI_DESC_TYPE_STATE_CONTROL ;
 int ACPI_FUNCTION_ENTRY () ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;

union acpi_generic_state *acpi_ut_create_control_state(void)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_ENTRY();



 state = acpi_ut_create_generic_state();
 if (!state) {
  return (((void*)0));
 }



 state->common.descriptor_type = ACPI_DESC_TYPE_STATE_CONTROL;
 state->common.state = ACPI_CONTROL_CONDITIONAL_EXECUTING;

 return (state);
}
