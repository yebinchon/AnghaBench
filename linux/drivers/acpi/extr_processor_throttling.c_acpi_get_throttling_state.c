
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct acpi_processor_tx_tss {scalar_t__ control; } ;
struct TYPE_2__ {int state_count; int * states_tss; } ;
struct acpi_processor {TYPE_1__ throttling; } ;



__attribute__((used)) static int acpi_get_throttling_state(struct acpi_processor *pr,
    u64 value)
{
 int i;

 for (i = 0; i < pr->throttling.state_count; i++) {
  struct acpi_processor_tx_tss *tx =
      (struct acpi_processor_tx_tss *)&(pr->throttling.
            states_tss[i]);
  if (tx->control == value)
   return i;
 }
 return -1;
}
