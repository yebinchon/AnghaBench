
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index; } ;
struct lock_file {int dummy; } ;


 struct lock_file LOCK_INIT ;
 int REFRESH_QUIET ;
 char const* _ (char const*) ;
 int error (char const*,...) ;
 int exit (int) ;
 scalar_t__ has_uncommitted_changes (struct repository*,int) ;
 scalar_t__ has_unstaged_changes (struct repository*,int) ;
 int refresh_index (int ,int ,int *,int *,int *) ;
 int repo_hold_locked_index (struct repository*,struct lock_file*,int ) ;
 int repo_update_index_if_able (struct repository*,struct lock_file*) ;
 int rollback_lock_file (struct lock_file*) ;

int require_clean_work_tree(struct repository *r,
       const char *action,
       const char *hint,
       int ignore_submodules,
       int gently)
{
 struct lock_file lock_file = LOCK_INIT;
 int err = 0, fd;

 fd = repo_hold_locked_index(r, &lock_file, 0);
 refresh_index(r->index, REFRESH_QUIET, ((void*)0), ((void*)0), ((void*)0));
 if (0 <= fd)
  repo_update_index_if_able(r, &lock_file);
 rollback_lock_file(&lock_file);

 if (has_unstaged_changes(r, ignore_submodules)) {

  error(_("cannot %s: You have unstaged changes."), _(action));
  err = 1;
 }

 if (has_uncommitted_changes(r, ignore_submodules)) {
  if (err)
   error(_("additionally, your index contains uncommitted changes."));
  else
   error(_("cannot %s: Your index contains uncommitted changes."),
         _(action));
  err = 1;
 }

 if (err) {
  if (hint)
   error("%s", hint);
  if (!gently)
   exit(128);
 }

 return err;
}
