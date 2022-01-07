
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_filter ;
struct TYPE_2__ {int filters; int lock; } ;


 int GIT_FILTER_CRLF ;
 int GIT_FILTER_CRLF_PRIORITY ;
 int GIT_FILTER_IDENT ;
 int GIT_FILTER_IDENT_PRIORITY ;
 int filter_def_priority_cmp ;
 TYPE_1__ filter_registry ;
 scalar_t__ filter_registry_insert (int ,int *,int ) ;
 int git__on_shutdown (int ) ;
 int * git_crlf_filter_new () ;
 int git_filter_free (int *) ;
 int git_filter_global_shutdown ;
 int * git_ident_filter_new () ;
 scalar_t__ git_rwlock_init (int *) ;
 int git_vector_init (int *,int,int ) ;

int git_filter_global_init(void)
{
 git_filter *crlf = ((void*)0), *ident = ((void*)0);
 int error = 0;

 if (git_rwlock_init(&filter_registry.lock) < 0)
  return -1;

 if ((error = git_vector_init(&filter_registry.filters, 2,
  filter_def_priority_cmp)) < 0)
  goto done;

 if ((crlf = git_crlf_filter_new()) == ((void*)0) ||
  filter_registry_insert(
   GIT_FILTER_CRLF, crlf, GIT_FILTER_CRLF_PRIORITY) < 0 ||
  (ident = git_ident_filter_new()) == ((void*)0) ||
  filter_registry_insert(
   GIT_FILTER_IDENT, ident, GIT_FILTER_IDENT_PRIORITY) < 0)
  error = -1;

 git__on_shutdown(git_filter_global_shutdown);

done:
 if (error) {
  git_filter_free(crlf);
  git_filter_free(ident);
 }

 return error;
}
