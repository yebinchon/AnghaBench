
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ec {int lock; TYPE_1__* curr; int flags; } ;
struct TYPE_2__ {scalar_t__ command; } ;


 scalar_t__ ACPI_EC_COMMAND_QUERY ;
 scalar_t__ ACPI_EC_EVT_TIMING_QUERY ;
 scalar_t__ ACPI_EC_EVT_TIMING_STATUS ;
 int EC_FLAGS_QUERY_PENDING ;
 scalar_t__ ec_event_clearing ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool acpi_ec_guard_event(struct acpi_ec *ec)
{
 bool guarded = 1;
 unsigned long flags;

 spin_lock_irqsave(&ec->lock, flags);
 if (ec_event_clearing == ACPI_EC_EVT_TIMING_STATUS ||
     ec_event_clearing == ACPI_EC_EVT_TIMING_QUERY ||
     !test_bit(EC_FLAGS_QUERY_PENDING, &ec->flags) ||
     (ec->curr && ec->curr->command == ACPI_EC_COMMAND_QUERY))
  guarded = 0;
 spin_unlock_irqrestore(&ec->lock, flags);
 return guarded;
}
