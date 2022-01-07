
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int EINVAL ;
 int acpi_tad_clear_status (struct device*,int ) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static int acpi_tad_status_write(struct device *dev, const char *buf, u32 timer_id)
{
 int ret, value;

 ret = kstrtoint(buf, 0, &value);
 if (ret)
  return ret;

 if (value)
  return -EINVAL;

 return acpi_tad_clear_status(dev, timer_id);
}
