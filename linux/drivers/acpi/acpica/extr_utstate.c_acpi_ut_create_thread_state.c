
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ thread_id; } ;
struct TYPE_3__ {int descriptor_type; } ;
union acpi_generic_state {TYPE_2__ thread; TYPE_1__ common; } ;
struct acpi_thread_state {int dummy; } ;
typedef scalar_t__ acpi_thread_id ;


 int ACPI_DESC_TYPE_STATE_THREAD ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_INFO ;
 scalar_t__ acpi_os_get_thread_id () ;
 union acpi_generic_state* acpi_ut_create_generic_state () ;

struct acpi_thread_state *acpi_ut_create_thread_state(void)
{
 union acpi_generic_state *state;

 ACPI_FUNCTION_ENTRY();



 state = acpi_ut_create_generic_state();
 if (!state) {
  return (((void*)0));
 }



 state->common.descriptor_type = ACPI_DESC_TYPE_STATE_THREAD;
 state->thread.thread_id = acpi_os_get_thread_id();



 if (!state->thread.thread_id) {
  ACPI_ERROR((AE_INFO, "Invalid zero ID from AcpiOsGetThreadId"));
  state->thread.thread_id = (acpi_thread_id) 1;
 }

 return ((struct acpi_thread_state *)state);
}
