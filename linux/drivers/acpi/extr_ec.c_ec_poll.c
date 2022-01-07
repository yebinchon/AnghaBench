
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; } ;


 int ETIME ;
 int advance_transaction (struct acpi_ec*) ;
 int ec_delay ;
 int ec_guard (struct acpi_ec*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int pr_debug (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_transaction (struct acpi_ec*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ec_poll(struct acpi_ec *ec)
{
 unsigned long flags;
 int repeat = 5;

 while (repeat--) {
  unsigned long delay = jiffies +
   msecs_to_jiffies(ec_delay);
  do {
   if (!ec_guard(ec))
    return 0;
   spin_lock_irqsave(&ec->lock, flags);
   advance_transaction(ec);
   spin_unlock_irqrestore(&ec->lock, flags);
  } while (time_before(jiffies, delay));
  pr_debug("controller reset, restart transaction\n");
  spin_lock_irqsave(&ec->lock, flags);
  start_transaction(ec);
  spin_unlock_irqrestore(&ec->lock, flags);
 }
 return -ETIME;
}
