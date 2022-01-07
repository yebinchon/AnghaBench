
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ec {int lock; TYPE_1__* curr; } ;
struct TYPE_2__ {int flags; } ;


 int ACPI_EC_COMMAND_COMPLETE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ec_transaction_completed(struct acpi_ec *ec)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&ec->lock, flags);
 if (ec->curr && (ec->curr->flags & ACPI_EC_COMMAND_COMPLETE))
  ret = 1;
 spin_unlock_irqrestore(&ec->lock, flags);
 return ret;
}
