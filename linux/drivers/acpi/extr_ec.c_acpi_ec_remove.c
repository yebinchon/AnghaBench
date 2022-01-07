
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int command_addr; int data_addr; } ;
struct acpi_device {int * driver_data; } ;


 int EINVAL ;
 struct acpi_ec* acpi_driver_data (struct acpi_device*) ;
 int acpi_ec_free (struct acpi_ec*) ;
 struct acpi_ec* boot_ec ;
 int ec_remove_handlers (struct acpi_ec*) ;
 int release_region (int ,int) ;

__attribute__((used)) static int acpi_ec_remove(struct acpi_device *device)
{
 struct acpi_ec *ec;

 if (!device)
  return -EINVAL;

 ec = acpi_driver_data(device);
 release_region(ec->data_addr, 1);
 release_region(ec->command_addr, 1);
 device->driver_data = ((void*)0);
 if (ec != boot_ec) {
  ec_remove_handlers(ec);
  acpi_ec_free(ec);
 }
 return 0;
}
