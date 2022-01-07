
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wt_status_change_data {int worktree_status; int new_submodule_commits; int rename_status; int rename_score; int oid_index; int mode_worktree; int mode_index; int rename_source; int dirty_submodule; } ;
struct wt_status {int workdir_dirty; scalar_t__ status_format; int change; } ;
struct string_list_item {struct wt_status_change_data* util; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {int status; int score; TYPE_2__* one; TYPE_1__* two; } ;
struct TYPE_4__ {int oid; int mode; int path; } ;
struct TYPE_3__ {int mode; int oid; int dirty_submodule; int path; } ;


 int BUG (char*,...) ;







 int MAX_SCORE ;
 scalar_t__ STATUS_FORMAT_SHORT ;
 scalar_t__ S_ISGITLINK (int ) ;
 int oidcpy (int *,int *) ;
 int oideq (int *,int *) ;
 int short_submodule_status (struct wt_status_change_data*) ;
 struct string_list_item* string_list_insert (int *,int ) ;
 struct wt_status_change_data* xcalloc (int,int) ;
 int xstrdup (int ) ;

__attribute__((used)) static void wt_status_collect_changed_cb(struct diff_queue_struct *q,
      struct diff_options *options,
      void *data)
{
 struct wt_status *s = data;
 int i;

 if (!q->nr)
  return;
 s->workdir_dirty = 1;
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
  if (!d->worktree_status)
   d->worktree_status = p->status;
  if (S_ISGITLINK(p->two->mode)) {
   d->dirty_submodule = p->two->dirty_submodule;
   d->new_submodule_commits = !oideq(&p->one->oid,
         &p->two->oid);
   if (s->status_format == STATUS_FORMAT_SHORT)
    d->worktree_status = short_submodule_status(d);
  }

  switch (p->status) {
  case 134:
   d->mode_worktree = p->two->mode;
   break;

  case 132:
   d->mode_index = p->one->mode;
   oidcpy(&d->oid_index, &p->one->oid);

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
  case 128:
   d->mode_index = p->one->mode;
   d->mode_worktree = p->two->mode;
   oidcpy(&d->oid_index, &p->one->oid);
   break;

  default:
   BUG("unhandled diff-files status '%c'", p->status);
   break;
  }

 }
}
