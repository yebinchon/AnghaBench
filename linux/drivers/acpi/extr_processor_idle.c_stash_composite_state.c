
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_lpi_states_array {int composite_states_size; struct acpi_lpi_state** composite_states; } ;
struct acpi_lpi_state {int dummy; } ;



__attribute__((used)) static void stash_composite_state(struct acpi_lpi_states_array *curr_level,
      struct acpi_lpi_state *t)
{
 curr_level->composite_states[curr_level->composite_states_size++] = t;
}
