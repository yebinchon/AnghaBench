
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction {scalar_t__ irq_count; int command; } ;
struct acpi_ec {int lock; struct transaction* curr; } ;


 int EINVAL ;
 int acpi_ec_cmd_string (int ) ;
 int acpi_ec_complete_request (struct acpi_ec*) ;
 int acpi_ec_submit_flushable_request (struct acpi_ec*) ;
 int acpi_ec_unmask_gpe (struct acpi_ec*) ;
 int ec_dbg_ref (struct acpi_ec*,char*) ;
 int ec_dbg_req (char*,int ) ;
 int ec_poll (struct acpi_ec*) ;
 scalar_t__ ec_storm_threshold ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_transaction (struct acpi_ec*) ;

__attribute__((used)) static int acpi_ec_transaction_unlocked(struct acpi_ec *ec,
     struct transaction *t)
{
 unsigned long tmp;
 int ret = 0;


 spin_lock_irqsave(&ec->lock, tmp);

 if (!acpi_ec_submit_flushable_request(ec)) {
  ret = -EINVAL;
  goto unlock;
 }
 ec_dbg_ref(ec, "Increase command");

 ec->curr = t;
 ec_dbg_req("Command(%s) started", acpi_ec_cmd_string(t->command));
 start_transaction(ec);
 spin_unlock_irqrestore(&ec->lock, tmp);

 ret = ec_poll(ec);

 spin_lock_irqsave(&ec->lock, tmp);
 if (t->irq_count == ec_storm_threshold)
  acpi_ec_unmask_gpe(ec);
 ec_dbg_req("Command(%s) stopped", acpi_ec_cmd_string(t->command));
 ec->curr = ((void*)0);

 acpi_ec_complete_request(ec);
 ec_dbg_ref(ec, "Decrease command");
unlock:
 spin_unlock_irqrestore(&ec->lock, tmp);
 return ret;
}
