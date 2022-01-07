
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dummy; } ;


 int __pm_relax (struct wakeup_source*) ;
 int wakeup_source_free (struct wakeup_source*) ;
 int wakeup_source_record (struct wakeup_source*) ;

void wakeup_source_destroy(struct wakeup_source *ws)
{
 if (!ws)
  return;

 __pm_relax(ws);
 wakeup_source_record(ws);
 wakeup_source_free(ws);
}
