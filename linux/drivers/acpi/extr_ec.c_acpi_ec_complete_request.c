
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {scalar_t__ reference_count; int wait; int flags; } ;


 int EC_FLAGS_GPE_HANDLER_INSTALLED ;
 int acpi_ec_disable_gpe (struct acpi_ec*,int) ;
 int acpi_ec_flushed (struct acpi_ec*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void acpi_ec_complete_request(struct acpi_ec *ec)
{
 bool flushed = 0;

 ec->reference_count--;
 if (test_bit(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags) &&
     ec->reference_count == 0)
  acpi_ec_disable_gpe(ec, 1);
 flushed = acpi_ec_flushed(ec);
 if (flushed)
  wake_up(&ec->wait);
}
