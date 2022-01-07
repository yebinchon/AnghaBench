
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_merge_driver ;
struct TYPE_2__ {int lock; } ;


 int GIT_EEXISTS ;
 int GIT_ERROR_MERGE ;
 int GIT_ERROR_OS ;
 int assert (int) ;
 int git_error_set (int ,char*,...) ;
 scalar_t__ git_rwlock_wrlock (int *) ;
 int git_rwlock_wrunlock (int *) ;
 TYPE_1__ merge_driver_registry ;
 int merge_driver_registry_find (int *,char const*) ;
 int merge_driver_registry_insert (char const*,int *) ;

int git_merge_driver_register(const char *name, git_merge_driver *driver)
{
 int error;

 assert(name && driver);

 if (git_rwlock_wrlock(&merge_driver_registry.lock) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock merge driver registry");
  return -1;
 }

 if (!merge_driver_registry_find(((void*)0), name)) {
  git_error_set(GIT_ERROR_MERGE, "attempt to reregister existing driver '%s'",
   name);
  error = GIT_EEXISTS;
  goto done;
 }

 error = merge_driver_registry_insert(name, driver);

done:
 git_rwlock_wrunlock(&merge_driver_registry.lock);
 return error;
}
