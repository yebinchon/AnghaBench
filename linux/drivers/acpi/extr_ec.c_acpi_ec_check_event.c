
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; int curr; } ;


 scalar_t__ ACPI_EC_EVT_TIMING_EVENT ;
 int advance_transaction (struct acpi_ec*) ;
 scalar_t__ ec_event_clearing ;
 scalar_t__ ec_guard (struct acpi_ec*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void acpi_ec_check_event(struct acpi_ec *ec)
{
 unsigned long flags;

 if (ec_event_clearing == ACPI_EC_EVT_TIMING_EVENT) {
  if (ec_guard(ec)) {
   spin_lock_irqsave(&ec->lock, flags);




   if (!ec->curr)
    advance_transaction(ec);
   spin_unlock_irqrestore(&ec->lock, flags);
  }
 }
}
