
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct transaction {int flags; scalar_t__ wlen; scalar_t__ wi; scalar_t__ rlen; scalar_t__ ri; int* rdata; scalar_t__ command; scalar_t__ irq_count; int * wdata; } ;
struct acpi_ec {int wait; int flags; int nr_pending_queries; struct transaction* curr; } ;


 int ACPI_EC_COMMAND_COMPLETE ;
 int ACPI_EC_COMMAND_POLL ;
 scalar_t__ ACPI_EC_COMMAND_QUERY ;
 scalar_t__ ACPI_EC_EVT_TIMING_EVENT ;
 int ACPI_EC_FLAG_IBF ;
 int ACPI_EC_FLAG_OBF ;
 int ACPI_EC_FLAG_SCI ;
 int EC_FLAGS_QUERY_GUARDING ;
 scalar_t__ EC_FLAGS_QUERY_HANDSHAKE ;
 int acpi_ec_clear_gpe (struct acpi_ec*) ;
 int acpi_ec_cmd_string (scalar_t__) ;
 int acpi_ec_complete_query (struct acpi_ec*) ;
 int acpi_ec_mask_gpe (struct acpi_ec*) ;
 int acpi_ec_read_data (struct acpi_ec*) ;
 int acpi_ec_read_status (struct acpi_ec*) ;
 int acpi_ec_submit_query (struct acpi_ec*) ;
 int acpi_ec_write_cmd (struct acpi_ec*,scalar_t__) ;
 int acpi_ec_write_data (struct acpi_ec*,int ) ;
 int clear_bit (int ,int *) ;
 int ec_dbg_evt (char*,int ) ;
 int ec_dbg_stm (char*,char*,int ) ;
 scalar_t__ ec_event_clearing ;
 scalar_t__ ec_storm_threshold ;
 int ec_transaction_transition (struct acpi_ec*,int) ;
 scalar_t__ in_interrupt () ;
 int smp_processor_id () ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void advance_transaction(struct acpi_ec *ec)
{
 struct transaction *t;
 u8 status;
 bool wakeup = 0;

 ec_dbg_stm("%s (%d)", in_interrupt() ? "IRQ" : "TASK",
     smp_processor_id());





 acpi_ec_clear_gpe(ec);
 status = acpi_ec_read_status(ec);
 t = ec->curr;




 if (!t || !(t->flags & ACPI_EC_COMMAND_POLL)) {
  if (ec_event_clearing == ACPI_EC_EVT_TIMING_EVENT &&
      (!ec->nr_pending_queries ||
       test_bit(EC_FLAGS_QUERY_GUARDING, &ec->flags))) {
   clear_bit(EC_FLAGS_QUERY_GUARDING, &ec->flags);
   acpi_ec_complete_query(ec);
  }
 }
 if (!t)
  goto err;
 if (t->flags & ACPI_EC_COMMAND_POLL) {
  if (t->wlen > t->wi) {
   if ((status & ACPI_EC_FLAG_IBF) == 0)
    acpi_ec_write_data(ec, t->wdata[t->wi++]);
   else
    goto err;
  } else if (t->rlen > t->ri) {
   if ((status & ACPI_EC_FLAG_OBF) == 1) {
    t->rdata[t->ri++] = acpi_ec_read_data(ec);
    if (t->rlen == t->ri) {
     ec_transaction_transition(ec, ACPI_EC_COMMAND_COMPLETE);
     if (t->command == ACPI_EC_COMMAND_QUERY)
      ec_dbg_evt("Command(%s) completed by hardware",
          acpi_ec_cmd_string(ACPI_EC_COMMAND_QUERY));
     wakeup = 1;
    }
   } else
    goto err;
  } else if (t->wlen == t->wi &&
      (status & ACPI_EC_FLAG_IBF) == 0) {
   ec_transaction_transition(ec, ACPI_EC_COMMAND_COMPLETE);
   wakeup = 1;
  }
  goto out;
 } else {
  if (EC_FLAGS_QUERY_HANDSHAKE &&
      !(status & ACPI_EC_FLAG_SCI) &&
      (t->command == ACPI_EC_COMMAND_QUERY)) {
   ec_transaction_transition(ec, ACPI_EC_COMMAND_POLL);
   t->rdata[t->ri++] = 0x00;
   ec_transaction_transition(ec, ACPI_EC_COMMAND_COMPLETE);
   ec_dbg_evt("Command(%s) completed by software",
       acpi_ec_cmd_string(ACPI_EC_COMMAND_QUERY));
   wakeup = 1;
  } else if ((status & ACPI_EC_FLAG_IBF) == 0) {
   acpi_ec_write_cmd(ec, t->command);
   ec_transaction_transition(ec, ACPI_EC_COMMAND_POLL);
  } else
   goto err;
  goto out;
 }
err:




 if (!(status & ACPI_EC_FLAG_SCI)) {
  if (in_interrupt() && t) {
   if (t->irq_count < ec_storm_threshold)
    ++t->irq_count;

   if (t->irq_count == ec_storm_threshold)
    acpi_ec_mask_gpe(ec);
  }
 }
out:
 if (status & ACPI_EC_FLAG_SCI)
  acpi_ec_submit_query(ec);
 if (wakeup && in_interrupt())
  wake_up(&ec->wait);
}
