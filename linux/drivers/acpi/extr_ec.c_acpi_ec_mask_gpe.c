
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; } ;


 int EC_FLAGS_GPE_MASKED ;
 int acpi_ec_disable_gpe (struct acpi_ec*,int) ;
 int ec_dbg_drv (char*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void acpi_ec_mask_gpe(struct acpi_ec *ec)
{
 if (!test_bit(EC_FLAGS_GPE_MASKED, &ec->flags)) {
  acpi_ec_disable_gpe(ec, 0);
  ec_dbg_drv("Polling enabled");
  set_bit(EC_FLAGS_GPE_MASKED, &ec->flags);
 }
}
