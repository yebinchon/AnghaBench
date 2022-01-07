
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_processor {int dummy; } ;
struct acpi_device {int handle; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ACPI_DEVICE_NOTIFY ;
 int acpi_cppc_processor_exit (struct acpi_processor*) ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 int acpi_processor_notify ;
 int acpi_processor_power_exit (struct acpi_processor*) ;
 int acpi_pss_perf_exit (struct acpi_processor*,struct acpi_device*) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;

__attribute__((used)) static int acpi_processor_stop(struct device *dev)
{
 struct acpi_device *device = ACPI_COMPANION(dev);
 struct acpi_processor *pr;

 if (!device)
  return 0;

 acpi_remove_notify_handler(device->handle, ACPI_DEVICE_NOTIFY,
       acpi_processor_notify);

 pr = acpi_driver_data(device);
 if (!pr)
  return 0;
 acpi_processor_power_exit(pr);

 acpi_pss_perf_exit(pr, device);

 acpi_cppc_processor_exit(pr);

 return 0;
}
