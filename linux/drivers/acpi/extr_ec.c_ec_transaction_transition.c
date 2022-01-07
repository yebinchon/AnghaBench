
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ec {int flags; TYPE_1__* curr; } ;
struct TYPE_2__ {unsigned long flags; scalar_t__ command; } ;


 unsigned long ACPI_EC_COMMAND_COMPLETE ;
 unsigned long ACPI_EC_COMMAND_POLL ;
 scalar_t__ ACPI_EC_COMMAND_QUERY ;
 scalar_t__ ACPI_EC_EVT_TIMING_EVENT ;
 scalar_t__ ACPI_EC_EVT_TIMING_QUERY ;
 scalar_t__ ACPI_EC_EVT_TIMING_STATUS ;
 int EC_FLAGS_QUERY_GUARDING ;
 int acpi_ec_complete_query (struct acpi_ec*) ;
 scalar_t__ ec_event_clearing ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void ec_transaction_transition(struct acpi_ec *ec, unsigned long flag)
{
 ec->curr->flags |= flag;
 if (ec->curr->command == ACPI_EC_COMMAND_QUERY) {
  if (ec_event_clearing == ACPI_EC_EVT_TIMING_STATUS &&
      flag == ACPI_EC_COMMAND_POLL)
   acpi_ec_complete_query(ec);
  if (ec_event_clearing == ACPI_EC_EVT_TIMING_QUERY &&
      flag == ACPI_EC_COMMAND_COMPLETE)
   acpi_ec_complete_query(ec);
  if (ec_event_clearing == ACPI_EC_EVT_TIMING_EVENT &&
      flag == ACPI_EC_COMMAND_COMPLETE)
   set_bit(EC_FLAGS_QUERY_GUARDING, &ec->flags);
 }
}
