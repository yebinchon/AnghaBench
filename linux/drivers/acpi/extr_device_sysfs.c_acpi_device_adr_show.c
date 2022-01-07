
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ bus_address; } ;
struct acpi_device {TYPE_1__ pnp; } ;
typedef int ssize_t ;


 scalar_t__ U32_MAX ;
 int sprintf (char*,char*,scalar_t__) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t acpi_device_adr_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);

 if (acpi_dev->pnp.bus_address > U32_MAX)
  return sprintf(buf, "0x%016llx\n", acpi_dev->pnp.bus_address);
 else
  return sprintf(buf, "0x%08llx\n", acpi_dev->pnp.bus_address);
}
