
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int attr_rdpmc; } ;


 int snprintf (char*,int,char*,int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static ssize_t get_attr_rdpmc(struct device *cdev,
         struct device_attribute *attr,
         char *buf)
{
 return snprintf(buf, 40, "%d\n", x86_pmu.attr_rdpmc);
}
