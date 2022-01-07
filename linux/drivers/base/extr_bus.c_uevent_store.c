
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* p; } ;
typedef int ssize_t ;
struct TYPE_2__ {int kobj; } ;


 int kobject_synth_uevent (int *,char const*,size_t) ;

__attribute__((used)) static ssize_t uevent_store(struct device_driver *drv, const char *buf,
       size_t count)
{
 int rc;

 rc = kobject_synth_uevent(&drv->p->kobj, buf, count);
 return rc ? rc : count;
}
