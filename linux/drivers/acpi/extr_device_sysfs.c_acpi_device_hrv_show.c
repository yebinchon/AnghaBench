
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int ssize_t ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t
acpi_device_hrv_show(struct device *dev, struct device_attribute *attr,
       char *buf) {
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 acpi_status status;
 unsigned long long hrv;

 status = acpi_evaluate_integer(acpi_dev->handle, "_HRV", ((void*)0), &hrv);
 if (ACPI_FAILURE(status))
  return -EIO;

 return sprintf(buf, "%llu\n", hrv);
}
