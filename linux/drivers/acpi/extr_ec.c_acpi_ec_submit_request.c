
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int reference_count; int flags; } ;


 int EC_FLAGS_GPE_HANDLER_INSTALLED ;
 int acpi_ec_enable_gpe (struct acpi_ec*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void acpi_ec_submit_request(struct acpi_ec *ec)
{
 ec->reference_count++;
 if (test_bit(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags) &&
     ec->reference_count == 1)
  acpi_ec_enable_gpe(ec, 1);
}
