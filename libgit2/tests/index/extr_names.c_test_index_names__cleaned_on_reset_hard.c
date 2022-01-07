
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int GIT_RESET_HARD ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_index_name_entrycount (int ) ;
 int git_object_free (int *) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int repo ;
 int repo_index ;
 int test_index_names__add () ;

void test_index_names__cleaned_on_reset_hard(void)
{
 git_object *target;

 cl_git_pass(git_revparse_single(&target, repo, "3a34580"));

 test_index_names__add();
 cl_git_pass(git_reset(repo, target, GIT_RESET_HARD, ((void*)0)));
 cl_assert(git_index_name_entrycount(repo_index) == 0);

 git_object_free(target);
}
