
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gio_device_id {int id; } ;
struct TYPE_2__ {int id; } ;
struct gio_device {TYPE_1__ id; } ;



const struct gio_device_id *gio_match_device(const struct gio_device_id *match,
       const struct gio_device *dev)
{
 const struct gio_device_id *ids;

 for (ids = match; ids->id != 0xff; ids++)
  if (ids->id == dev->id.id)
   return ids;

 return ((void*)0);
}
