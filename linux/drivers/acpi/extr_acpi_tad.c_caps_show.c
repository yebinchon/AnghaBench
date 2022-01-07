
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_tad_driver_data {int capabilities; } ;
typedef int ssize_t ;


 struct acpi_tad_driver_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t caps_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct acpi_tad_driver_data *dd = dev_get_drvdata(dev);

 return sprintf(buf, "0x%02X\n", dd->capabilities);
}
