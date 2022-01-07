
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_device {int dummy; } ;
struct counter_count_enum_ext {size_t num_items; char** items; } ;
struct counter_count {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ sprintf (char*,char*,char*) ;

ssize_t counter_count_enum_available_read(struct counter_device *counter,
       struct counter_count *count,
       void *priv, char *buf)
{
 const struct counter_count_enum_ext *const e = priv;
 size_t i;
 size_t len = 0;

 if (!e->num_items)
  return 0;

 for (i = 0; i < e->num_items; i++)
  len += sprintf(buf + len, "%s\n", e->items[i]);

 return len;
}
