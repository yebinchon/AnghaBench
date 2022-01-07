
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int attr_rdpmc; scalar_t__ attr_rdpmc_broken; } ;


 size_t EINVAL ;
 size_t ENOTSUPP ;
 size_t kstrtoul (char const*,int ,unsigned long*) ;
 int on_each_cpu (int ,int *,int) ;
 int rdpmc_always_available_key ;
 int refresh_pce ;
 int static_branch_dec (int *) ;
 int static_branch_inc (int *) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static ssize_t set_attr_rdpmc(struct device *cdev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 unsigned long val;
 ssize_t ret;

 ret = kstrtoul(buf, 0, &val);
 if (ret)
  return ret;

 if (val > 2)
  return -EINVAL;

 if (x86_pmu.attr_rdpmc_broken)
  return -ENOTSUPP;

 if ((val == 2) != (x86_pmu.attr_rdpmc == 2)) {





  if (val == 2)
   static_branch_inc(&rdpmc_always_available_key);
  else
   static_branch_dec(&rdpmc_always_available_key);
  on_each_cpu(refresh_pce, ((void*)0), 1);
 }

 x86_pmu.attr_rdpmc = val;

 return count;
}
