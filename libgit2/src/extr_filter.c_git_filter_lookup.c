
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * filter; int initialized; } ;
typedef TYPE_1__ git_filter_def ;
typedef int git_filter ;
struct TYPE_6__ {int lock; } ;


 int GIT_ERROR_OS ;
 scalar_t__ filter_initialize (TYPE_1__*) ;
 TYPE_3__ filter_registry ;
 TYPE_1__* filter_registry_lookup (size_t*,char const*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_rwlock_rdlock (int *) ;
 int git_rwlock_rdunlock (int *) ;

git_filter *git_filter_lookup(const char *name)
{
 size_t pos;
 git_filter_def *fdef;
 git_filter *filter = ((void*)0);

 if (git_rwlock_rdlock(&filter_registry.lock) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock filter registry");
  return ((void*)0);
 }

 if ((fdef = filter_registry_lookup(&pos, name)) == ((void*)0) ||
  (!fdef->initialized && filter_initialize(fdef) < 0))
  goto done;

 filter = fdef->filter;

done:
 git_rwlock_rdunlock(&filter_registry.lock);
 return filter;
}
