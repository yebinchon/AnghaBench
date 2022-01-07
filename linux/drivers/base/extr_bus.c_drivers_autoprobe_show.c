
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {TYPE_1__* p; } ;
typedef int ssize_t ;
struct TYPE_2__ {int drivers_autoprobe; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t drivers_autoprobe_show(struct bus_type *bus, char *buf)
{
 return sprintf(buf, "%d\n", bus->p->drivers_autoprobe);
}
