
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wt_status_change_data {int stagemask; } ;
struct TYPE_2__ {int nr; struct string_list_item* items; } ;
struct wt_status {TYPE_1__ change; } ;
struct string_list_item {struct wt_status_change_data* util; } ;


 int wt_longstatus_print_trailer (struct wt_status*) ;
 int wt_longstatus_print_unmerged_data (struct wt_status*,struct string_list_item*) ;
 int wt_longstatus_print_unmerged_header (struct wt_status*) ;

__attribute__((used)) static void wt_longstatus_print_unmerged(struct wt_status *s)
{
 int shown_header = 0;
 int i;

 for (i = 0; i < s->change.nr; i++) {
  struct wt_status_change_data *d;
  struct string_list_item *it;
  it = &(s->change.items[i]);
  d = it->util;
  if (!d->stagemask)
   continue;
  if (!shown_header) {
   wt_longstatus_print_unmerged_header(s);
   shown_header = 1;
  }
  wt_longstatus_print_unmerged_data(s, it);
 }
 if (shown_header)
  wt_longstatus_print_trailer(s);

}
