
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_2__ {int version; } ;


 TYPE_1__ x86_pmu ;

__attribute__((used)) static umode_t
exra_is_visible(struct kobject *kobj, struct attribute *attr, int i)
{
 return x86_pmu.version >= 2 ? attr->mode : 0;
}
