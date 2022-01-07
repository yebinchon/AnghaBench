
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int resolved; int conflicts; int staged; } ;
typedef TYPE_1__ git_merge_diff_list ;


 int git__free (TYPE_1__*) ;
 int git_pool_clear (int *) ;
 int git_vector_free (int *) ;

void git_merge_diff_list__free(git_merge_diff_list *diff_list)
{
 if (!diff_list)
  return;

 git_vector_free(&diff_list->staged);
 git_vector_free(&diff_list->conflicts);
 git_vector_free(&diff_list->resolved);
 git_pool_clear(&diff_list->pool);
 git__free(diff_list);
}
