
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int acpi_lid_evaluate_state (int ) ;
 int lid_device ;

int acpi_lid_open(void)
{
 if (!lid_device)
  return -ENODEV;

 return acpi_lid_evaluate_state(lid_device);
}
