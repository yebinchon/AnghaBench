
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int filters; } ;
typedef TYPE_1__ git_filter_list ;
struct TYPE_11__ {void* payload; int * filter; } ;
typedef TYPE_2__ git_filter_entry ;
struct TYPE_12__ {int initialized; } ;
typedef TYPE_3__ git_filter_def ;
typedef int git_filter ;
struct TYPE_13__ {int lock; int filters; } ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_FILTER ;
 int GIT_ERROR_OS ;
 int assert (int) ;
 int filter_def_filter_key_check ;
 int filter_initialize (TYPE_3__*) ;
 TYPE_7__ filter_registry ;
 TYPE_2__* git_array_alloc (int ) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_rwlock_rdlock (int *) ;
 int git_rwlock_rdunlock (int *) ;
 TYPE_3__* git_vector_get (int *,size_t) ;
 scalar_t__ git_vector_search2 (size_t*,int *,int ,int *) ;

int git_filter_list_push(
 git_filter_list *fl, git_filter *filter, void *payload)
{
 int error = 0;
 size_t pos;
 git_filter_def *fdef = ((void*)0);
 git_filter_entry *fe;

 assert(fl && filter);

 if (git_rwlock_rdlock(&filter_registry.lock) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock filter registry");
  return -1;
 }

 if (git_vector_search2(
   &pos, &filter_registry.filters,
   filter_def_filter_key_check, filter) == 0)
  fdef = git_vector_get(&filter_registry.filters, pos);

 git_rwlock_rdunlock(&filter_registry.lock);

 if (fdef == ((void*)0)) {
  git_error_set(GIT_ERROR_FILTER, "cannot use an unregistered filter");
  return -1;
 }

 if (!fdef->initialized && (error = filter_initialize(fdef)) < 0)
  return error;

 fe = git_array_alloc(fl->filters);
 GIT_ERROR_CHECK_ALLOC(fe);
 fe->filter = filter;
 fe->payload = payload;

 return 0;
}
