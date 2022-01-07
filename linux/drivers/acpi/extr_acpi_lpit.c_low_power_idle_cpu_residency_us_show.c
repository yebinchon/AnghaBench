
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int lpit_read_residency_counter_us (int *,int) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t low_power_idle_cpu_residency_us_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 u64 counter;
 int ret;

 ret = lpit_read_residency_counter_us(&counter, 0);
 if (ret)
  return ret;

 return sprintf(buf, "%llu\n", counter);
}
