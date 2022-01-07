
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device {int dummy; } ;


 scalar_t__ ACPI_TAD_WAKE_DISABLED ;
 int EINVAL ;
 int acpi_tad_wake_set (struct device*,char*,scalar_t__,scalar_t__) ;
 int kstrtou32 (char const*,int ,scalar_t__*) ;
 scalar_t__ sysfs_streq (char const*,char const*) ;

__attribute__((used)) static int acpi_tad_wake_write(struct device *dev, const char *buf, char *method,
          u32 timer_id, const char *specval)
{
 u32 value;

 if (sysfs_streq(buf, specval)) {
  value = ACPI_TAD_WAKE_DISABLED;
 } else {
  int ret = kstrtou32(buf, 0, &value);

  if (ret)
   return ret;

  if (value == ACPI_TAD_WAKE_DISABLED)
   return -EINVAL;
 }

 return acpi_tad_wake_set(dev, method, timer_id, value);
}
