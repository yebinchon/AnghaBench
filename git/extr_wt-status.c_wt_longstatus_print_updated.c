
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wt_status_change_data {scalar_t__ index_status; } ;
struct TYPE_2__ {int nr; struct string_list_item* items; } ;
struct wt_status {TYPE_1__ change; } ;
struct string_list_item {struct wt_status_change_data* util; } ;


 scalar_t__ DIFF_STATUS_UNMERGED ;
 int WT_STATUS_UPDATED ;
 int wt_longstatus_print_cached_header (struct wt_status*) ;
 int wt_longstatus_print_change_data (struct wt_status*,int ,struct string_list_item*) ;
 int wt_longstatus_print_trailer (struct wt_status*) ;

__attribute__((used)) static void wt_longstatus_print_updated(struct wt_status *s)
{
 int shown_header = 0;
 int i;

 for (i = 0; i < s->change.nr; i++) {
  struct wt_status_change_data *d;
  struct string_list_item *it;
  it = &(s->change.items[i]);
  d = it->util;
  if (!d->index_status ||
      d->index_status == DIFF_STATUS_UNMERGED)
   continue;
  if (!shown_header) {
   wt_longstatus_print_cached_header(s);
   shown_header = 1;
  }
  wt_longstatus_print_change_data(s, WT_STATUS_UPDATED, it);
 }
 if (shown_header)
  wt_longstatus_print_trailer(s);
}
