
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int gpe; } ;


 int acpi_clear_gpe (int *,int ) ;
 int acpi_ec_is_gpe_raised (struct acpi_ec*) ;

__attribute__((used)) static inline void acpi_ec_clear_gpe(struct acpi_ec *ec)
{
 if (!acpi_ec_is_gpe_raised(ec))
  return;
 acpi_clear_gpe(((void*)0), ec->gpe);
}
