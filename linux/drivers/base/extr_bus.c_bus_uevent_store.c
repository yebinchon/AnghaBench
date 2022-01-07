
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bus_type {TYPE_2__* p; } ;
typedef int ssize_t ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ subsys; } ;


 int kobject_synth_uevent (int *,char const*,size_t) ;

__attribute__((used)) static ssize_t bus_uevent_store(struct bus_type *bus,
    const char *buf, size_t count)
{
 int rc;

 rc = kobject_synth_uevent(&bus->p->subsys.kobj, buf, count);
 return rc ? rc : count;
}
