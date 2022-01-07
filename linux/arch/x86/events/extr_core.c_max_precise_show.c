
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int x86_pmu_max_precise () ;

__attribute__((used)) static ssize_t max_precise_show(struct device *cdev,
      struct device_attribute *attr,
      char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", x86_pmu_max_precise());
}
