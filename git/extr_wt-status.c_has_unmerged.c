
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wt_status_change_data {scalar_t__ stagemask; } ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct wt_status {TYPE_2__ change; } ;
struct TYPE_3__ {struct wt_status_change_data* util; } ;



__attribute__((used)) static int has_unmerged(struct wt_status *s)
{
 int i;

 for (i = 0; i < s->change.nr; i++) {
  struct wt_status_change_data *d;
  d = s->change.items[i].util;
  if (d->stagemask)
   return 1;
 }
 return 0;
}
