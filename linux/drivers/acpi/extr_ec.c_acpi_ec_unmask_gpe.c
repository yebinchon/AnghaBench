
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; } ;


 int EC_FLAGS_GPE_MASKED ;
 int acpi_ec_enable_gpe (struct acpi_ec*,int) ;
 int clear_bit (int ,int *) ;
 int ec_dbg_drv (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void acpi_ec_unmask_gpe(struct acpi_ec *ec)
{
 if (test_bit(EC_FLAGS_GPE_MASKED, &ec->flags)) {
  clear_bit(EC_FLAGS_GPE_MASKED, &ec->flags);
  acpi_ec_enable_gpe(ec, 0);
  ec_dbg_drv("Polling disabled");
 }
}
