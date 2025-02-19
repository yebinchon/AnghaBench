
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_memory_map {int device_handle; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct acpi_nfit_memory_map* to_nfit_memdev (struct device*) ;

__attribute__((used)) static ssize_t handle_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct acpi_nfit_memory_map *memdev = to_nfit_memdev(dev);

 return sprintf(buf, "%#x\n", memdev->device_handle);
}
