
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dummy; } ;


 int wakeup_source_destroy (struct wakeup_source*) ;
 int wakeup_source_remove (struct wakeup_source*) ;
 int wakeup_source_sysfs_remove (struct wakeup_source*) ;

void wakeup_source_unregister(struct wakeup_source *ws)
{
 if (ws) {
  wakeup_source_remove(ws);
  wakeup_source_sysfs_remove(ws);
  wakeup_source_destroy(ws);
 }
}
