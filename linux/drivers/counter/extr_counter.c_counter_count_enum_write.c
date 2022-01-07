
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_device {int dummy; } ;
struct counter_count_enum_ext {int (* set ) (struct counter_device*,struct counter_count*,scalar_t__) ;int num_items; int items; } ;
struct counter_count {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 scalar_t__ __sysfs_match_string (int ,int ,char const*) ;
 int stub1 (struct counter_device*,struct counter_count*,scalar_t__) ;

ssize_t counter_count_enum_write(struct counter_device *counter,
     struct counter_count *count, void *priv,
     const char *buf, size_t len)
{
 const struct counter_count_enum_ext *const e = priv;
 ssize_t index;
 int err;

 if (!e->set)
  return -EINVAL;

 index = __sysfs_match_string(e->items, e->num_items, buf);
 if (index < 0)
  return index;

 err = e->set(counter, count, index);
 if (err)
  return err;

 return len;
}
