
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {struct acpi_walk_state* next; } ;
struct acpi_thread_state {struct acpi_walk_state* walk_state_list; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ds_push_walk_state ;
 int return_VOID ;

void
acpi_ds_push_walk_state(struct acpi_walk_state *walk_state,
   struct acpi_thread_state *thread)
{
 ACPI_FUNCTION_TRACE(ds_push_walk_state);

 walk_state->next = thread->walk_state_list;
 thread->walk_state_list = walk_state;

 return_VOID;
}
