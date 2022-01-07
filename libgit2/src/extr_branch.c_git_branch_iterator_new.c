
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_branch_t ;
typedef int git_branch_iterator ;
struct TYPE_5__ {int iter; int flags; } ;
typedef TYPE_1__ branch_iter ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 scalar_t__ git_reference_iterator_new (int *,int *) ;

int git_branch_iterator_new(
 git_branch_iterator **out,
 git_repository *repo,
 git_branch_t list_flags)
{
 branch_iter *iter;

 iter = git__calloc(1, sizeof(branch_iter));
 GIT_ERROR_CHECK_ALLOC(iter);

 iter->flags = list_flags;

 if (git_reference_iterator_new(&iter->iter, repo) < 0) {
  git__free(iter);
  return -1;
 }

 *out = (git_branch_iterator *) iter;

 return 0;
}
