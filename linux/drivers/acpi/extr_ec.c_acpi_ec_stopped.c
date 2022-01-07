
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; } ;


 int acpi_ec_flushed (struct acpi_ec*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool acpi_ec_stopped(struct acpi_ec *ec)
{
 unsigned long flags;
 bool flushed;

 spin_lock_irqsave(&ec->lock, flags);
 flushed = acpi_ec_flushed(ec);
 spin_unlock_irqrestore(&ec->lock, flags);
 return flushed;
}
