
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int reference_count; int gpe; } ;


 int ACPI_GPE_DISABLE ;
 int BUG_ON (int) ;
 int acpi_disable_gpe (int *,int ) ;
 int acpi_set_gpe (int *,int ,int ) ;

__attribute__((used)) static inline void acpi_ec_disable_gpe(struct acpi_ec *ec, bool close)
{
 if (close)
  acpi_disable_gpe(((void*)0), ec->gpe);
 else {
  BUG_ON(ec->reference_count < 1);
  acpi_set_gpe(((void*)0), ec->gpe, ACPI_GPE_DISABLE);
 }
}
