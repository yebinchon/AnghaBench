
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_pool ;
struct TYPE_11__ {int * path; } ;
struct TYPE_10__ {int * path; } ;
struct TYPE_12__ {TYPE_2__ old_file; TYPE_1__ new_file; int flags; } ;
typedef TYPE_3__ git_diff_delta ;


 int GIT_DIFF_FLAG__CLEAR_INTERNAL (int ) ;
 int git__free (TYPE_3__*) ;
 TYPE_3__* git__malloc (int) ;
 void* git_pool_strdup (int *,int *) ;
 int memcpy (TYPE_3__*,TYPE_3__ const*,int) ;

git_diff_delta *git_diff__delta_dup(
 const git_diff_delta *d, git_pool *pool)
{
 git_diff_delta *delta = git__malloc(sizeof(git_diff_delta));
 if (!delta)
  return ((void*)0);

 memcpy(delta, d, sizeof(git_diff_delta));
 GIT_DIFF_FLAG__CLEAR_INTERNAL(delta->flags);

 if (d->old_file.path != ((void*)0)) {
  delta->old_file.path = git_pool_strdup(pool, d->old_file.path);
  if (delta->old_file.path == ((void*)0))
   goto fail;
 }

 if (d->new_file.path != d->old_file.path && d->new_file.path != ((void*)0)) {
  delta->new_file.path = git_pool_strdup(pool, d->new_file.path);
  if (delta->new_file.path == ((void*)0))
   goto fail;
 } else {
  delta->new_file.path = delta->old_file.path;
 }

 return delta;

fail:
 git__free(delta);
 return ((void*)0);
}
