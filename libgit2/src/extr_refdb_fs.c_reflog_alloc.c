
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* ref_name; int entries; } ;
typedef TYPE_1__ git_reflog ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 TYPE_1__* git__strdup (char const*) ;
 scalar_t__ git_vector_init (int *,int ,int *) ;

__attribute__((used)) static int reflog_alloc(git_reflog **reflog, const char *name)
{
 git_reflog *log;

 *reflog = ((void*)0);

 log = git__calloc(1, sizeof(git_reflog));
 GIT_ERROR_CHECK_ALLOC(log);

 log->ref_name = git__strdup(name);
 GIT_ERROR_CHECK_ALLOC(log->ref_name);

 if (git_vector_init(&log->entries, 0, ((void*)0)) < 0) {
  git__free(log->ref_name);
  git__free(log);
  return -1;
 }

 *reflog = log;

 return 0;
}
