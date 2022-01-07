
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int REPO_NAME ;
 int cl_git_pass (int ) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_repository_free (int *) ;
 int git_signature_free (int *) ;
 int * repo ;
 int * signature ;

void test_stash_foreach__cleanup(void)
{
 git_signature_free(signature);
 signature = ((void*)0);

 git_repository_free(repo);
 repo = ((void*)0);

 cl_git_pass(git_futils_rmdir_r(REPO_NAME, ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
