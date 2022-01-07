
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dev; } ;


 int device_unregister (int ) ;

void wakeup_source_sysfs_remove(struct wakeup_source *ws)
{
 device_unregister(ws->dev);
}
