
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ device_is_registered (struct device*) ;
 int wakeup_source_add (struct wakeup_source*) ;
 struct wakeup_source* wakeup_source_create (char const*) ;
 int wakeup_source_free (struct wakeup_source*) ;
 int wakeup_source_sysfs_add (struct device*,struct wakeup_source*) ;

struct wakeup_source *wakeup_source_register(struct device *dev,
          const char *name)
{
 struct wakeup_source *ws;
 int ret;

 ws = wakeup_source_create(name);
 if (ws) {
  if (!dev || device_is_registered(dev)) {
   ret = wakeup_source_sysfs_add(dev, ws);
   if (ret) {
    wakeup_source_free(ws);
    return ((void*)0);
   }
  }
  wakeup_source_add(ws);
 }
 return ws;
}
