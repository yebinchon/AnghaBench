
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int reference_count; int flags; int gpe; int handle; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_GPE_EDGE_TRIGGERED ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 int ACPI_TYPE_METHOD ;
 scalar_t__ AE_NOT_FOUND ;
 int EC_FLAGS_EC_HANDLER_INSTALLED ;
 int EC_FLAGS_EVT_HANDLER_INSTALLED ;
 int EC_FLAGS_GPE_HANDLER_INSTALLED ;
 int EC_FLAGS_STARTED ;
 int ENODEV ;
 int acpi_ec_enable_event (struct acpi_ec*) ;
 int acpi_ec_enable_gpe (struct acpi_ec*,int) ;
 int acpi_ec_enter_noirq (struct acpi_ec*) ;
 int acpi_ec_gpe_handler ;
 int acpi_ec_leave_noirq (struct acpi_ec*) ;
 int acpi_ec_register_query_methods ;
 int acpi_ec_space_handler ;
 int acpi_ec_start (struct acpi_ec*,int) ;
 int acpi_ec_stop (struct acpi_ec*,int) ;
 scalar_t__ acpi_install_address_space_handler (int ,int ,int *,int *,struct acpi_ec*) ;
 scalar_t__ acpi_install_gpe_raw_handler (int *,int ,int ,int *,struct acpi_ec*) ;
 int acpi_walk_namespace (int ,int ,int,int ,int *,struct acpi_ec*,int *) ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ec_install_handlers(struct acpi_ec *ec, bool handle_events)
{
 acpi_status status;

 acpi_ec_start(ec, 0);

 if (!test_bit(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags)) {
  acpi_ec_enter_noirq(ec);
  status = acpi_install_address_space_handler(ec->handle,
           ACPI_ADR_SPACE_EC,
           &acpi_ec_space_handler,
           ((void*)0), ec);
  if (ACPI_FAILURE(status)) {
   if (status == AE_NOT_FOUND) {






    pr_err("Fail in evaluating the _REG object"
     " of EC device. Broken bios is suspected.\n");
   } else {
    acpi_ec_stop(ec, 0);
    return -ENODEV;
   }
  }
  set_bit(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags);
 }

 if (!handle_events)
  return 0;

 if (!test_bit(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags)) {

  acpi_walk_namespace(ACPI_TYPE_METHOD, ec->handle, 1,
        acpi_ec_register_query_methods,
        ((void*)0), ec, ((void*)0));
  set_bit(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags);
 }
 if (!test_bit(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags)) {
  status = acpi_install_gpe_raw_handler(((void*)0), ec->gpe,
       ACPI_GPE_EDGE_TRIGGERED,
       &acpi_ec_gpe_handler, ec);

  if (ACPI_SUCCESS(status)) {
   set_bit(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags);
   acpi_ec_leave_noirq(ec);
   if (test_bit(EC_FLAGS_STARTED, &ec->flags) &&
       ec->reference_count >= 1)
    acpi_ec_enable_gpe(ec, 1);
  }
 }

 acpi_ec_enable_event(ec);

 return 0;
}
