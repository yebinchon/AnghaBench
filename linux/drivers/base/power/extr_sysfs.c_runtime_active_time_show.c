
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NSEC_PER_MSEC ;
 int do_div (int ,int ) ;
 int pm_runtime_active_time (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t runtime_active_time_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int ret;
 u64 tmp = pm_runtime_active_time(dev);
 do_div(tmp, NSEC_PER_MSEC);
 ret = sprintf(buf, "%llu\n", tmp);
 return ret;
}
