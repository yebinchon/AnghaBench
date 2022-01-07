
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_5__ {int resolved; int conflicts; int staged; int pool; int * repo; } ;
typedef TYPE_1__ git_merge_diff_list ;


 TYPE_1__* git__calloc (int,int) ;
 int git_merge_diff_list__free (TYPE_1__*) ;
 int git_pool_init (int *,int) ;
 scalar_t__ git_vector_init (int *,int ,int *) ;

git_merge_diff_list *git_merge_diff_list__alloc(git_repository *repo)
{
 git_merge_diff_list *diff_list = git__calloc(1, sizeof(git_merge_diff_list));

 if (diff_list == ((void*)0))
  return ((void*)0);

 diff_list->repo = repo;

 git_pool_init(&diff_list->pool, 1);

 if (git_vector_init(&diff_list->staged, 0, ((void*)0)) < 0 ||
  git_vector_init(&diff_list->conflicts, 0, ((void*)0)) < 0 ||
  git_vector_init(&diff_list->resolved, 0, ((void*)0)) < 0) {
  git_merge_diff_list__free(diff_list);
  return ((void*)0);
 }

 return diff_list;
}
