
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int busy_polling; int lock; scalar_t__ polling_guard; } ;


 int ec_log_drv (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void acpi_ec_enter_noirq(struct acpi_ec *ec)
{
 unsigned long flags;

 spin_lock_irqsave(&ec->lock, flags);
 ec->busy_polling = 1;
 ec->polling_guard = 0;
 ec_log_drv("interrupt blocked");
 spin_unlock_irqrestore(&ec->lock, flags);
}
