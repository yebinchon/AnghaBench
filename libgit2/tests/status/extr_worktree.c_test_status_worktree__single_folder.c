
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_git_fail (int) ;
 int * cl_git_sandbox_init (char*) ;
 int git_status_file (unsigned int*,int *,char*) ;

void test_status_worktree__single_folder(void)
{
 int error;
 unsigned int status_flags;
 git_repository *repo = cl_git_sandbox_init("status");

 error = git_status_file(&status_flags, repo, "subdir");
 cl_git_fail(error);
 cl_assert(error != GIT_ENOTFOUND);
}
