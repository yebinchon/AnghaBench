
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 unsigned int GIT_STATUS_WT_NEW ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_status_file (unsigned int*,int *,char*) ;

void test_status_worktree__single_file_empty_repo(void)
{
 unsigned int status_flags;
 git_repository *repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_mkfile("empty_standard_repo/new_file", "new_file\n");

 cl_git_pass(git_status_file(&status_flags, repo, "new_file"));
 cl_assert(status_flags == GIT_STATUS_WT_NEW);
}
