
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index_file; } ;
struct lock_file {int dummy; } ;


 int BUG (char*) ;
 int hold_lock_file_for_update (struct lock_file*,int ,int) ;

int repo_hold_locked_index(struct repository *repo,
      struct lock_file *lf,
      int flags)
{
 if (!repo->index_file)
  BUG("the repo hasn't been setup");
 return hold_lock_file_for_update(lf, repo->index_file, flags);
}
