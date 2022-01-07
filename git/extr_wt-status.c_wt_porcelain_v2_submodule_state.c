
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_change_data {int dirty_submodule; scalar_t__ new_submodule_commits; int mode_worktree; int mode_index; int mode_head; } ;


 int DIRTY_SUBMODULE_MODIFIED ;
 int DIRTY_SUBMODULE_UNTRACKED ;
 scalar_t__ S_ISGITLINK (int ) ;

__attribute__((used)) static void wt_porcelain_v2_submodule_state(
 struct wt_status_change_data *d,
 char sub[5])
{
 if (S_ISGITLINK(d->mode_head) ||
  S_ISGITLINK(d->mode_index) ||
  S_ISGITLINK(d->mode_worktree)) {
  sub[0] = 'S';
  sub[1] = d->new_submodule_commits ? 'C' : '.';
  sub[2] = (d->dirty_submodule & DIRTY_SUBMODULE_MODIFIED) ? 'M' : '.';
  sub[3] = (d->dirty_submodule & DIRTY_SUBMODULE_UNTRACKED) ? 'U' : '.';
 } else {
  sub[0] = 'N';
  sub[1] = '.';
  sub[2] = '.';
  sub[3] = '.';
 }
 sub[4] = 0;
}
