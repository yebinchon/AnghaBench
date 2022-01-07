
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {char* unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t acpi_device_uid_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);

 return sprintf(buf, "%s\n", acpi_dev->pnp.unique_id);
}
