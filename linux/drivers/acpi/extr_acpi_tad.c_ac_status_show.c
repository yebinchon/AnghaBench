
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ACPI_TAD_AC_TIMER ;
 int acpi_tad_status_read (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t ac_status_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 return acpi_tad_status_read(dev, buf, ACPI_TAD_AC_TIMER);
}
