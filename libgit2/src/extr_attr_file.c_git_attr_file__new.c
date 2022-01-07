
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_attr_file_source ;
typedef int git_attr_file_entry ;
struct TYPE_7__ {int source; int * entry; int pool; int lock; } ;
typedef TYPE_1__ git_attr_file ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_OS ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_init (int *) ;
 int git_pool_init (int *,int) ;

int git_attr_file__new(
 git_attr_file **out,
 git_attr_file_entry *entry,
 git_attr_file_source source)
{
 git_attr_file *attrs = git__calloc(1, sizeof(git_attr_file));
 GIT_ERROR_CHECK_ALLOC(attrs);

 if (git_mutex_init(&attrs->lock) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to initialize lock");
  git__free(attrs);
  return -1;
 }

 git_pool_init(&attrs->pool, 1);
 GIT_REFCOUNT_INC(attrs);
 attrs->entry = entry;
 attrs->source = source;
 *out = attrs;
 return 0;
}
