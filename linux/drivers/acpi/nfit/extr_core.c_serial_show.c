
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_control_region {int serial_number; } ;
typedef int ssize_t ;


 int be32_to_cpu (int ) ;
 int sprintf (char*,char*,int) ;
 struct acpi_nfit_control_region* to_nfit_dcr (struct device*) ;

__attribute__((used)) static ssize_t serial_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct acpi_nfit_control_region *dcr = to_nfit_dcr(dev);

 return sprintf(buf, "0x%08x\n", be32_to_cpu(dcr->serial_number));
}
