
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_change_data {scalar_t__ mode_head; scalar_t__ mode_index; scalar_t__ mode_worktree; int worktree_status; int oid_index; int oid_head; int index_status; } ;
struct string_list_item {struct wt_status_change_data* util; } ;


 int assert (int) ;
 int oidcpy (int *,int *) ;

__attribute__((used)) static void wt_porcelain_v2_fix_up_changed(struct string_list_item *it)
{
 struct wt_status_change_data *d = it->util;

 if (!d->index_status) {
  assert(d->mode_head == 0);
  d->mode_head = d->mode_index;
  oidcpy(&d->oid_head, &d->oid_index);
 }

 if (!d->worktree_status) {
  assert(d->mode_worktree == 0);
  d->mode_worktree = d->mode_index;
 }
}
