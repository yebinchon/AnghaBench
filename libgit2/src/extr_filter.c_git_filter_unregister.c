
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int initialized; struct TYPE_6__* attrdata; struct TYPE_6__* filter_name; TYPE_2__* filter; } ;
typedef TYPE_1__ git_filter_def ;
struct TYPE_8__ {int lock; int filters; } ;
struct TYPE_7__ {int (* shutdown ) (TYPE_2__*) ;} ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_FILTER ;
 int GIT_ERROR_OS ;
 int GIT_FILTER_CRLF ;
 int GIT_FILTER_IDENT ;
 int assert (char const*) ;
 TYPE_5__ filter_registry ;
 TYPE_1__* filter_registry_lookup (size_t*,char const*) ;
 int git__free (TYPE_1__*) ;
 int git_error_set (int ,char*,...) ;
 scalar_t__ git_rwlock_wrlock (int *) ;
 int git_rwlock_wrunlock (int *) ;
 int git_vector_remove (int *,size_t) ;
 int strcmp (int ,char const*) ;
 int stub1 (TYPE_2__*) ;

int git_filter_unregister(const char *name)
{
 size_t pos;
 git_filter_def *fdef;
 int error = 0;

 assert(name);


 if (!strcmp(GIT_FILTER_CRLF, name) || !strcmp(GIT_FILTER_IDENT, name)) {
  git_error_set(GIT_ERROR_FILTER, "cannot unregister filter '%s'", name);
  return -1;
 }

 if (git_rwlock_wrlock(&filter_registry.lock) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock filter registry");
  return -1;
 }

 if ((fdef = filter_registry_lookup(&pos, name)) == ((void*)0)) {
  git_error_set(GIT_ERROR_FILTER, "cannot find filter '%s' to unregister", name);
  error = GIT_ENOTFOUND;
  goto done;
 }

 git_vector_remove(&filter_registry.filters, pos);

 if (fdef->initialized && fdef->filter && fdef->filter->shutdown) {
  fdef->filter->shutdown(fdef->filter);
  fdef->initialized = 0;
 }

 git__free(fdef->filter_name);
 git__free(fdef->attrdata);
 git__free(fdef);

done:
 git_rwlock_wrunlock(&filter_registry.lock);
 return error;
}
