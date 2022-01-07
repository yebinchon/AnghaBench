
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; int flags; int wait; } ;


 int EC_FLAGS_STARTED ;
 int EC_FLAGS_STOPPED ;
 int __acpi_ec_disable_event (struct acpi_ec*) ;
 int acpi_ec_complete_request (struct acpi_ec*) ;
 scalar_t__ acpi_ec_started (struct acpi_ec*) ;
 int acpi_ec_stopped (struct acpi_ec*) ;
 int clear_bit (int ,int *) ;
 int ec_dbg_drv (char*) ;
 int ec_dbg_ref (struct acpi_ec*,char*) ;
 int ec_freeze_events ;
 int ec_log_drv (char*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void acpi_ec_stop(struct acpi_ec *ec, bool suspending)
{
 unsigned long flags;

 spin_lock_irqsave(&ec->lock, flags);
 if (acpi_ec_started(ec)) {
  ec_dbg_drv("Stopping EC");
  set_bit(EC_FLAGS_STOPPED, &ec->flags);
  spin_unlock_irqrestore(&ec->lock, flags);
  wait_event(ec->wait, acpi_ec_stopped(ec));
  spin_lock_irqsave(&ec->lock, flags);

  if (!suspending) {
   acpi_ec_complete_request(ec);
   ec_dbg_ref(ec, "Decrease driver");
  } else if (!ec_freeze_events)
   __acpi_ec_disable_event(ec);
  clear_bit(EC_FLAGS_STARTED, &ec->flags);
  clear_bit(EC_FLAGS_STOPPED, &ec->flags);
  ec_log_drv("EC stopped");
 }
 spin_unlock_irqrestore(&ec->lock, flags);
}
