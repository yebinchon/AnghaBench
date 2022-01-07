
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int rpm_get_accounted_time (struct device*,int) ;

u64 pm_runtime_active_time(struct device *dev)
{
 return rpm_get_accounted_time(dev, 0);
}
