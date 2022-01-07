
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_filter ;
struct TYPE_2__ {int lock; } ;


 int GIT_EEXISTS ;
 int GIT_ERROR_FILTER ;
 int GIT_ERROR_OS ;
 int assert (int) ;
 TYPE_1__ filter_registry ;
 int filter_registry_find (int *,char const*) ;
 int filter_registry_insert (char const*,int *,int) ;
 int git_error_set (int ,char*,...) ;
 scalar_t__ git_rwlock_wrlock (int *) ;
 int git_rwlock_wrunlock (int *) ;

int git_filter_register(
 const char *name, git_filter *filter, int priority)
{
 int error;

 assert(name && filter);

 if (git_rwlock_wrlock(&filter_registry.lock) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock filter registry");
  return -1;
 }

 if (!filter_registry_find(((void*)0), name)) {
  git_error_set(
   GIT_ERROR_FILTER, "attempt to reregister existing filter '%s'", name);
  error = GIT_EEXISTS;
  goto done;
 }

 error = filter_registry_insert(name, filter, priority);

done:
 git_rwlock_wrunlock(&filter_registry.lock);
 return error;
}
