
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_device_enum_ext {int (* get ) (struct counter_device*,size_t*) ;size_t num_items; char** items; } ;
struct counter_device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sprintf (char*,char*,char*) ;
 int stub1 (struct counter_device*,size_t*) ;

ssize_t counter_device_enum_read(struct counter_device *counter, void *priv,
     char *buf)
{
 const struct counter_device_enum_ext *const e = priv;
 int err;
 size_t index;

 if (!e->get)
  return -EINVAL;

 err = e->get(counter, &index);
 if (err)
  return err;

 if (index >= e->num_items)
  return -EINVAL;

 return sprintf(buf, "%s\n", e->items[index]);
}
