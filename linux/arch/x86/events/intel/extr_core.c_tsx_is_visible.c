
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;


 int X86_FEATURE_RTM ;
 scalar_t__ boot_cpu_has (int ) ;

__attribute__((used)) static umode_t
tsx_is_visible(struct kobject *kobj, struct attribute *attr, int i)
{
 return boot_cpu_has(X86_FEATURE_RTM) ? attr->mode : 0;
}
