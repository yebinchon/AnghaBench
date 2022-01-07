
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_driver {int dummy; } ;


 int acpi_bus_register_driver (struct acpi_driver*) ;
 scalar_t__ acpi_disabled ;

__attribute__((used)) static int acpi_button_register_driver(struct acpi_driver *driver)
{







 if (acpi_disabled)
  return 0;

 return acpi_bus_register_driver(driver);
}
