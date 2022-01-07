
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; int gpe; int handle; } ;


 int ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EC_FLAGS_EC_HANDLER_INSTALLED ;
 int EC_FLAGS_EVT_HANDLER_INSTALLED ;
 int EC_FLAGS_GPE_HANDLER_INSTALLED ;
 int acpi_ec_gpe_handler ;
 int acpi_ec_remove_query_handlers (struct acpi_ec*,int,int ) ;
 int acpi_ec_space_handler ;
 int acpi_ec_stop (struct acpi_ec*,int) ;
 int acpi_remove_address_space_handler (int ,int ,int *) ;
 int acpi_remove_gpe_handler (int *,int ,int *) ;
 int clear_bit (int ,int *) ;
 int pr_err (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ec_remove_handlers(struct acpi_ec *ec)
{
 if (test_bit(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags)) {
  if (ACPI_FAILURE(acpi_remove_address_space_handler(ec->handle,
     ACPI_ADR_SPACE_EC, &acpi_ec_space_handler)))
   pr_err("failed to remove space handler\n");
  clear_bit(EC_FLAGS_EC_HANDLER_INSTALLED, &ec->flags);
 }
 acpi_ec_stop(ec, 0);

 if (test_bit(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags)) {
  if (ACPI_FAILURE(acpi_remove_gpe_handler(((void*)0), ec->gpe,
     &acpi_ec_gpe_handler)))
   pr_err("failed to remove gpe handler\n");
  clear_bit(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags);
 }
 if (test_bit(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags)) {
  acpi_ec_remove_query_handlers(ec, 1, 0);
  clear_bit(EC_FLAGS_EVT_HANDLER_INSTALLED, &ec->flags);
 }
}
