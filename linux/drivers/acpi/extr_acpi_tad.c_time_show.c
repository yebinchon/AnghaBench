
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_tad_rt {int year; int month; int day; int hour; int minute; int second; int tz; int daylight; } ;
typedef int ssize_t ;


 int acpi_tad_get_real_time (struct device*,struct acpi_tad_rt*) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static ssize_t time_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct acpi_tad_rt rt;
 int ret;

 ret = acpi_tad_get_real_time(dev, &rt);
 if (ret)
  return ret;

 return sprintf(buf, "%u:%u:%u:%u:%u:%u:%d:%u\n",
         rt.year, rt.month, rt.day, rt.hour, rt.minute, rt.second,
         rt.tz, rt.daylight);
}
