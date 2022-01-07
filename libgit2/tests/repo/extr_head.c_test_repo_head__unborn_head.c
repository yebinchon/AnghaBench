
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int NON_EXISTING_HEAD ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int ,char*,char*,int,int *) ;
 int git_repository_head_detached (int ) ;
 int git_repository_head_unborn (int ) ;
 int make_head_unborn (int ,int ) ;
 int repo ;

void test_repo_head__unborn_head(void)
{
 git_reference *ref;

 cl_git_pass(git_repository_head_detached(repo));

 make_head_unborn(repo, NON_EXISTING_HEAD);

 cl_assert(git_repository_head_unborn(repo) == 1);



 cl_git_pass(git_reference_symbolic_create(&ref, repo, "HEAD", "refs/heads/master", 1, ((void*)0)));
 cl_assert(git_repository_head_unborn(repo) == 0);

 git_reference_free(ref);
}
