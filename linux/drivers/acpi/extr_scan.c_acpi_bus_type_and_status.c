
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_object_type ;
typedef int acpi_handle ;


 int ACPI_BUS_TYPE_DEVICE ;
 int ACPI_BUS_TYPE_POWER ;
 int ACPI_BUS_TYPE_PROCESSOR ;
 int ACPI_BUS_TYPE_THERMAL ;
 scalar_t__ ACPI_FAILURE (int ) ;
 unsigned long long ACPI_STA_DEFAULT ;





 int ENODEV ;
 int acpi_bus_get_status_handle (int ,unsigned long long*) ;
 int acpi_device_should_be_hidden (int ) ;
 int acpi_get_type (int ,int*) ;

__attribute__((used)) static int acpi_bus_type_and_status(acpi_handle handle, int *type,
        unsigned long long *sta)
{
 acpi_status status;
 acpi_object_type acpi_type;

 status = acpi_get_type(handle, &acpi_type);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 switch (acpi_type) {
 case 132:
 case 131:
  if (acpi_device_should_be_hidden(handle))
   return -ENODEV;

  *type = ACPI_BUS_TYPE_DEVICE;




  *sta = ACPI_STA_DEFAULT;
  break;
 case 129:
  *type = ACPI_BUS_TYPE_PROCESSOR;
  status = acpi_bus_get_status_handle(handle, sta);
  if (ACPI_FAILURE(status))
   return -ENODEV;
  break;
 case 128:
  *type = ACPI_BUS_TYPE_THERMAL;
  *sta = ACPI_STA_DEFAULT;
  break;
 case 130:
  *type = ACPI_BUS_TYPE_POWER;
  *sta = ACPI_STA_DEFAULT;
  break;
 default:
  return -ENODEV;
 }

 return 0;
}
