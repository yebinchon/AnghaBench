
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wt_status_change_data {int index_status; int rename_status; int rename_score; int stagemask; int oid_index; int oid_head; int mode_index; int mode_head; int rename_source; } ;
struct wt_status {int committable; TYPE_2__* repo; int change; } ;
struct string_list_item {struct wt_status_change_data* util; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {int status; int score; TYPE_3__* two; TYPE_1__* one; } ;
struct TYPE_6__ {int path; int oid; int mode; } ;
struct TYPE_5__ {int index; } ;
struct TYPE_4__ {int oid; int mode; int path; } ;


 int BUG (char*,...) ;







 int MAX_SCORE ;
 int oidcpy (int *,int *) ;
 struct string_list_item* string_list_insert (int *,int ) ;
 int unmerged_mask (int ,int ) ;
 struct wt_status_change_data* xcalloc (int,int) ;
 int xstrdup (int ) ;

__attribute__((used)) static void wt_status_collect_updated_cb(struct diff_queue_struct *q,
      struct diff_options *options,
      void *data)
{
 struct wt_status *s = data;
 int i;

 for (i = 0; i < q->nr; i++) {
  struct diff_filepair *p;
  struct string_list_item *it;
  struct wt_status_change_data *d;

  p = q->queue[i];
  it = string_list_insert(&s->change, p->two->path);
  d = it->util;
  if (!d) {
   d = xcalloc(1, sizeof(*d));
   it->util = d;
  }
  if (!d->index_status)
   d->index_status = p->status;
  switch (p->status) {
  case 134:

   d->mode_index = p->two->mode;
   oidcpy(&d->oid_index, &p->two->oid);
   s->committable = 1;
   break;
  case 132:
   d->mode_head = p->one->mode;
   oidcpy(&d->oid_head, &p->one->oid);
   s->committable = 1;

   break;

  case 133:
  case 130:
   if (d->rename_status)
    BUG("multiple renames on the same target? how?");
   d->rename_source = xstrdup(p->one->path);
   d->rename_score = p->score * 100 / MAX_SCORE;
   d->rename_status = p->status;

  case 131:
  case 129:
   d->mode_head = p->one->mode;
   d->mode_index = p->two->mode;
   oidcpy(&d->oid_head, &p->one->oid);
   oidcpy(&d->oid_index, &p->two->oid);
   s->committable = 1;
   break;
  case 128:
   d->stagemask = unmerged_mask(s->repo->index,
           p->two->path);





   break;

  default:
   BUG("unhandled diff-index status '%c'", p->status);
   break;
  }
 }
}
