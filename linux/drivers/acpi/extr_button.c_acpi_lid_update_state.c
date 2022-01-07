
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int acpi_lid_evaluate_state (struct acpi_device*) ;
 int acpi_lid_notify_state (struct acpi_device*,int) ;
 int acpi_pm_wakeup_event (int *) ;

__attribute__((used)) static int acpi_lid_update_state(struct acpi_device *device,
     bool signal_wakeup)
{
 int state;

 state = acpi_lid_evaluate_state(device);
 if (state < 0)
  return state;

 if (state && signal_wakeup)
  acpi_pm_wakeup_event(&device->dev);

 return acpi_lid_notify_state(device, state);
}
