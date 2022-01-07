
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int dummy; } ;


 struct acpi_ec* boot_ec ;
 struct acpi_ec* first_ec ;
 int kfree (struct acpi_ec*) ;

__attribute__((used)) static void acpi_ec_free(struct acpi_ec *ec)
{
 if (first_ec == ec)
  first_ec = ((void*)0);
 if (boot_ec == ec)
  boot_ec = ((void*)0);
 kfree(ec);
}
