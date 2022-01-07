
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ need_hotplug_init; } ;
struct acpi_processor {TYPE_1__ flags; } ;
struct acpi_device {int handle; int dev; } ;
typedef int acpi_status ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int CONFIG_ACPI_CPU_FREQ_PSS ;
 int ENODEV ;
 int IS_ENABLED (int ) ;
 int acpi_cppc_processor_probe (struct acpi_processor*) ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 int acpi_idle_driver ;
 int acpi_install_notify_handler (int ,int ,int ,struct acpi_device*) ;
 int acpi_processor_notify ;
 int acpi_processor_power_exit (struct acpi_processor*) ;
 int acpi_processor_power_init (struct acpi_processor*) ;
 int acpi_pss_perf_exit (struct acpi_processor*,struct acpi_device*) ;
 int acpi_pss_perf_init (struct acpi_processor*,struct acpi_device*) ;
 int * cpuidle_get_driver () ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int __acpi_processor_start(struct acpi_device *device)
{
 struct acpi_processor *pr = acpi_driver_data(device);
 acpi_status status;
 int result = 0;

 if (!pr)
  return -ENODEV;

 if (pr->flags.need_hotplug_init)
  return 0;

 result = acpi_cppc_processor_probe(pr);
 if (result && !IS_ENABLED(CONFIG_ACPI_CPU_FREQ_PSS))
  dev_dbg(&device->dev, "CPPC data invalid or not present\n");

 if (!cpuidle_get_driver() || cpuidle_get_driver() == &acpi_idle_driver)
  acpi_processor_power_init(pr);

 result = acpi_pss_perf_init(pr, device);
 if (result)
  goto err_power_exit;

 status = acpi_install_notify_handler(device->handle, ACPI_DEVICE_NOTIFY,
          acpi_processor_notify, device);
 if (ACPI_SUCCESS(status))
  return 0;

 result = -ENODEV;
 acpi_pss_perf_exit(pr, device);

err_power_exit:
 acpi_processor_power_exit(pr);
 return result;
}
