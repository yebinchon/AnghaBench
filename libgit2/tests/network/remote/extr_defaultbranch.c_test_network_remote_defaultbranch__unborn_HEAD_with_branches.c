
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo_a ;
 int git_clone (int **,int ,char*,int *) ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int ,char*,char*,int,int *) ;
 int git_repository_free (int *) ;
 int git_repository_head_unborn (int *) ;
 int git_repository_path (int ) ;

void test_network_remote_defaultbranch__unborn_HEAD_with_branches(void)
{
 git_reference *ref;
 git_repository *cloned_repo;

 cl_git_pass(git_reference_symbolic_create(&ref, g_repo_a, "HEAD", "refs/heads/i-dont-exist", 1, ((void*)0)));
 git_reference_free(ref);

 cl_git_pass(git_clone(&cloned_repo, git_repository_path(g_repo_a), "./semi-empty", ((void*)0)));

 cl_assert(git_repository_head_unborn(cloned_repo));

 git_repository_free(cloned_repo);
}
