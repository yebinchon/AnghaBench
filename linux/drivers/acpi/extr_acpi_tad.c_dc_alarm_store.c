
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ACPI_TAD_DC_TIMER ;
 int acpi_tad_alarm_write (struct device*,char const*,int ) ;

__attribute__((used)) static ssize_t dc_alarm_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 int ret = acpi_tad_alarm_write(dev, buf, ACPI_TAD_DC_TIMER);

 return ret ? ret : count;
}
