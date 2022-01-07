
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int work; int nr_pending_queries; int flags; } ;


 int ACPI_EC_COMMAND_QUERY ;
 int EC_FLAGS_QUERY_PENDING ;
 int acpi_ec_cmd_string (int ) ;
 int acpi_ec_event_enabled (struct acpi_ec*) ;
 int acpi_ec_mask_gpe (struct acpi_ec*) ;
 int ec_dbg_evt (char*,int ) ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void acpi_ec_submit_query(struct acpi_ec *ec)
{
 acpi_ec_mask_gpe(ec);
 if (!acpi_ec_event_enabled(ec))
  return;
 if (!test_and_set_bit(EC_FLAGS_QUERY_PENDING, &ec->flags)) {
  ec_dbg_evt("Command(%s) submitted/blocked",
      acpi_ec_cmd_string(ACPI_EC_COMMAND_QUERY));
  ec->nr_pending_queries++;
  schedule_work(&ec->work);
 }
}
