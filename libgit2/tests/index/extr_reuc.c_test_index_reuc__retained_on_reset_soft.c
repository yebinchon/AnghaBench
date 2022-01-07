
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int GIT_RESET_HARD ;
 int GIT_RESET_SOFT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int repo ;
 int reuc_entry_exists () ;
 int test_index_reuc__add () ;

void test_index_reuc__retained_on_reset_soft(void)
{
 git_object *target;

 cl_git_pass(git_revparse_single(&target, repo, "3a34580"));

 cl_git_pass(git_reset(repo, target, GIT_RESET_HARD, ((void*)0)));

 test_index_reuc__add();
 cl_git_pass(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));
 cl_assert(reuc_entry_exists() == 1);

 git_object_free(target);
}
