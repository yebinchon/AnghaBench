
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ACPI_TAD_AC_TIMER ;
 int acpi_tad_policy_write (struct device*,char const*,int ) ;

__attribute__((used)) static ssize_t ac_policy_store(struct device *dev, struct device_attribute *attr,
          const char *buf, size_t count)
{
 int ret = acpi_tad_policy_write(dev, buf, ACPI_TAD_AC_TIMER);

 return ret ? ret : count;
}
