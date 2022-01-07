
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; int flags; } ;


 int EC_FLAGS_STARTED ;
 int acpi_ec_submit_request (struct acpi_ec*) ;
 int ec_dbg_drv (char*) ;
 int ec_dbg_ref (struct acpi_ec*,char*) ;
 int ec_log_drv (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void acpi_ec_start(struct acpi_ec *ec, bool resuming)
{
 unsigned long flags;

 spin_lock_irqsave(&ec->lock, flags);
 if (!test_and_set_bit(EC_FLAGS_STARTED, &ec->flags)) {
  ec_dbg_drv("Starting EC");

  if (!resuming) {
   acpi_ec_submit_request(ec);
   ec_dbg_ref(ec, "Increase driver");
  }
  ec_log_drv("EC started");
 }
 spin_unlock_irqrestore(&ec->lock, flags);
}
