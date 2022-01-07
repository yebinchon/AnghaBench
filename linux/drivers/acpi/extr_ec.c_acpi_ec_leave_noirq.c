
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; int polling_guard; int busy_polling; } ;


 int ec_busy_polling ;
 int ec_log_drv (char*) ;
 int ec_polling_guard ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void acpi_ec_leave_noirq(struct acpi_ec *ec)
{
 unsigned long flags;

 spin_lock_irqsave(&ec->lock, flags);
 ec->busy_polling = ec_busy_polling;
 ec->polling_guard = ec_polling_guard;
 ec_log_drv("interrupt unblocked");
 spin_unlock_irqrestore(&ec->lock, flags);
}
