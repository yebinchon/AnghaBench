
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int initialized; TYPE_2__* driver; } ;
typedef TYPE_1__ git_merge_driver_entry ;
struct TYPE_8__ {int lock; int drivers; } ;
struct TYPE_7__ {int (* shutdown ) (TYPE_2__*) ;} ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_MERGE ;
 int GIT_ERROR_OS ;
 int git__free (TYPE_1__*) ;
 int git_error_set (int ,char*,...) ;
 scalar_t__ git_rwlock_wrlock (int *) ;
 int git_rwlock_wrunlock (int *) ;
 int git_vector_remove (int *,size_t) ;
 TYPE_4__ merge_driver_registry ;
 TYPE_1__* merge_driver_registry_lookup (size_t*,char const*) ;
 int stub1 (TYPE_2__*) ;

int git_merge_driver_unregister(const char *name)
{
 git_merge_driver_entry *entry;
 size_t pos;
 int error = 0;

 if (git_rwlock_wrlock(&merge_driver_registry.lock) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock merge driver registry");
  return -1;
 }

 if ((entry = merge_driver_registry_lookup(&pos, name)) == ((void*)0)) {
  git_error_set(GIT_ERROR_MERGE, "cannot find merge driver '%s' to unregister",
   name);
  error = GIT_ENOTFOUND;
  goto done;
 }

 git_vector_remove(&merge_driver_registry.drivers, pos);

 if (entry->initialized && entry->driver->shutdown) {
  entry->driver->shutdown(entry->driver);
  entry->initialized = 0;
 }

 git__free(entry);

done:
 git_rwlock_wrunlock(&merge_driver_registry.lock);
 return error;
}
