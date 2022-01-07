
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {unsigned long timestamp; int wait; scalar_t__ busy_polling; int polling_guard; } ;


 int ETIME ;
 int acpi_ec_guard_event (struct acpi_ec*) ;
 scalar_t__ ec_transaction_completed (struct acpi_ec*) ;
 int ec_transaction_polled (struct acpi_ec*) ;
 int jiffies ;
 int jiffies_to_usecs (unsigned long) ;
 scalar_t__ time_before (int ,unsigned long) ;
 int udelay (int ) ;
 unsigned long usecs_to_jiffies (int ) ;
 scalar_t__ wait_event_timeout (int ,scalar_t__,unsigned long) ;

__attribute__((used)) static int ec_guard(struct acpi_ec *ec)
{
 unsigned long guard = usecs_to_jiffies(ec->polling_guard);
 unsigned long timeout = ec->timestamp + guard;


 do {
  if (ec->busy_polling) {

   if (ec_transaction_completed(ec))
    return 0;
   udelay(jiffies_to_usecs(guard));
  } else {
   if (!ec_transaction_polled(ec) &&
       !acpi_ec_guard_event(ec))
    break;
   if (wait_event_timeout(ec->wait,
            ec_transaction_completed(ec),
            guard))
    return 0;
  }
 } while (time_before(jiffies, timeout));
 return -ETIME;
}
