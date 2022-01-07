
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_smb_hc {int query_bit; int ec; } ;
struct acpi_device {int * driver_data; } ;


 int EINVAL ;
 struct acpi_smb_hc* acpi_driver_data (struct acpi_device*) ;
 int acpi_ec_remove_query_handler (int ,int ) ;
 int acpi_os_wait_events_complete () ;
 int kfree (struct acpi_smb_hc*) ;

__attribute__((used)) static int acpi_smbus_hc_remove(struct acpi_device *device)
{
 struct acpi_smb_hc *hc;

 if (!device)
  return -EINVAL;

 hc = acpi_driver_data(device);
 acpi_ec_remove_query_handler(hc->ec, hc->query_bit);
 acpi_os_wait_events_complete();
 kfree(hc);
 device->driver_data = ((void*)0);
 return 0;
}
