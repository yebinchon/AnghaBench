
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ refcount; } ;
typedef TYPE_2__ git_refcount ;
typedef int git_index ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_index_open (int **,char*) ;
 int git_repository_free (int *) ;
 int git_repository_set_index (int *,int *) ;
 int * repo ;

void test_repo_setters__setting_a_new_index_on_a_repo_which_has_already_loaded_one_properly_honors_the_refcount(void)
{
 git_index *new_index;

 cl_git_pass(git_index_open(&new_index, "./my-index"));
 cl_assert(((git_refcount *)new_index)->refcount.val == 1);

 git_repository_set_index(repo, new_index);
 cl_assert(((git_refcount *)new_index)->refcount.val == 2);

 git_repository_free(repo);
 cl_assert(((git_refcount *)new_index)->refcount.val == 1);

 git_index_free(new_index);




 repo = ((void*)0);
}
