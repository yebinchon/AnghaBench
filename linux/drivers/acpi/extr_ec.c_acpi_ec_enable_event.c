
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; } ;


 scalar_t__ EC_FLAGS_CLEAR_ON_RESUME ;
 int __acpi_ec_enable_event (struct acpi_ec*) ;
 int acpi_ec_clear (struct acpi_ec*) ;
 scalar_t__ acpi_ec_started (struct acpi_ec*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void acpi_ec_enable_event(struct acpi_ec *ec)
{
 unsigned long flags;

 spin_lock_irqsave(&ec->lock, flags);
 if (acpi_ec_started(ec))
  __acpi_ec_enable_event(ec);
 spin_unlock_irqrestore(&ec->lock, flags);


 if (EC_FLAGS_CLEAR_ON_RESUME)
  acpi_ec_clear(ec);
}
