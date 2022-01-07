
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int boost_enabled; } ;


 TYPE_1__* cpufreq_driver ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_boost(struct kobject *kobj,
     struct kobj_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", cpufreq_driver->boost_enabled);
}
