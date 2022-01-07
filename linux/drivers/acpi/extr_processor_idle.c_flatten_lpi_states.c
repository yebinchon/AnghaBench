
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct acpi_lpi_state* lpi_states; } ;
struct acpi_processor {TYPE_1__ power; } ;
struct acpi_lpi_states_array {int size; int composite_states_size; struct acpi_lpi_state* entries; struct acpi_lpi_state** composite_states; } ;
struct acpi_lpi_state {int flags; scalar_t__ index; scalar_t__ enable_parent_state; } ;


 int ACPI_LPI_STATE_FLAGS_ENABLED ;
 size_t ACPI_PROCESSOR_MAX_POWER ;
 scalar_t__ combine_lpi_states (struct acpi_lpi_state*,struct acpi_lpi_state*,struct acpi_lpi_state*) ;
 size_t flat_state_cnt ;
 int kfree (struct acpi_lpi_state*) ;
 int memcpy (struct acpi_lpi_state*,struct acpi_lpi_state*,int) ;
 int pr_warn (char*,...) ;
 int stash_composite_state (struct acpi_lpi_states_array*,struct acpi_lpi_state*) ;

__attribute__((used)) static int flatten_lpi_states(struct acpi_processor *pr,
         struct acpi_lpi_states_array *curr_level,
         struct acpi_lpi_states_array *prev_level)
{
 int i, j, state_count = curr_level->size;
 struct acpi_lpi_state *p, *t = curr_level->entries;

 curr_level->composite_states_size = 0;
 for (j = 0; j < state_count; j++, t++) {
  struct acpi_lpi_state *flpi;

  if (!(t->flags & ACPI_LPI_STATE_FLAGS_ENABLED))
   continue;

  if (flat_state_cnt >= ACPI_PROCESSOR_MAX_POWER) {
   pr_warn("Limiting number of LPI states to max (%d)\n",
    ACPI_PROCESSOR_MAX_POWER);
   pr_warn("Please increase ACPI_PROCESSOR_MAX_POWER if needed.\n");
   break;
  }

  flpi = &pr->power.lpi_states[flat_state_cnt];

  if (!prev_level) {
   memcpy(flpi, t, sizeof(*t));
   stash_composite_state(curr_level, flpi);
   flat_state_cnt++;
   continue;
  }

  for (i = 0; i < prev_level->composite_states_size; i++) {
   p = prev_level->composite_states[i];
   if (t->index <= p->enable_parent_state &&
       combine_lpi_states(p, t, flpi)) {
    stash_composite_state(curr_level, flpi);
    flat_state_cnt++;
    flpi++;
   }
  }
 }

 kfree(curr_level->entries);
 return 0;
}
