
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_driver {int dummy; } ;


 int acpi_bus_unregister_driver (struct acpi_driver*) ;
 int acpi_disabled ;

__attribute__((used)) static void acpi_button_unregister_driver(struct acpi_driver *driver)
{
 if (!acpi_disabled)
  acpi_bus_unregister_driver(driver);
}
