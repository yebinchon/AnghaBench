
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {TYPE_1__* p; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int drivers_autoprobe; } ;



__attribute__((used)) static ssize_t drivers_autoprobe_store(struct bus_type *bus,
           const char *buf, size_t count)
{
 if (buf[0] == '0')
  bus->p->drivers_autoprobe = 0;
 else
  bus->p->drivers_autoprobe = 1;
 return count;
}
