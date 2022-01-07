
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int reference_count; int gpe; } ;


 int ACPI_GPE_ENABLE ;
 int BUG_ON (int) ;
 scalar_t__ acpi_ec_is_gpe_raised (struct acpi_ec*) ;
 int acpi_enable_gpe (int *,int ) ;
 int acpi_set_gpe (int *,int ,int ) ;
 int advance_transaction (struct acpi_ec*) ;
 int ec_dbg_raw (char*) ;

__attribute__((used)) static inline void acpi_ec_enable_gpe(struct acpi_ec *ec, bool open)
{
 if (open)
  acpi_enable_gpe(((void*)0), ec->gpe);
 else {
  BUG_ON(ec->reference_count < 1);
  acpi_set_gpe(((void*)0), ec->gpe, ACPI_GPE_ENABLE);
 }
 if (acpi_ec_is_gpe_raised(ec)) {





  ec_dbg_raw("Polling quirk");
  advance_transaction(ec);
 }
}
