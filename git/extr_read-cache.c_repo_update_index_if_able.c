
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct repository {TYPE_1__* index; } ;
struct lock_file {int dummy; } ;
struct TYPE_3__ {scalar_t__ cache_changed; } ;


 int COMMIT_LOCK ;
 scalar_t__ has_racy_timestamp (TYPE_1__*) ;
 scalar_t__ repo_verify_index (struct repository*) ;
 int rollback_lock_file (struct lock_file*) ;
 int write_locked_index (TYPE_1__*,struct lock_file*,int ) ;

void repo_update_index_if_able(struct repository *repo,
          struct lock_file *lockfile)
{
 if ((repo->index->cache_changed ||
      has_racy_timestamp(repo->index)) &&
     repo_verify_index(repo))
  write_locked_index(repo->index, lockfile, COMMIT_LOCK);
 else
  rollback_lock_file(lockfile);
}
