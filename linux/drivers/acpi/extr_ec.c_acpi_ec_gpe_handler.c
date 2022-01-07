
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_ec {int lock; } ;
typedef int acpi_handle ;


 int ACPI_INTERRUPT_HANDLED ;
 int advance_transaction (struct acpi_ec*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 acpi_ec_gpe_handler(acpi_handle gpe_device,
 u32 gpe_number, void *data)
{
 unsigned long flags;
 struct acpi_ec *ec = data;

 spin_lock_irqsave(&ec->lock, flags);
 advance_transaction(ec);
 spin_unlock_irqrestore(&ec->lock, flags);
 return ACPI_INTERRUPT_HANDLED;
}
