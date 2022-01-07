
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_ERROR ;
 int cl_assert (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int g_repo ;
 int git_branch_remote_name (int *,int ,char const*) ;
 int git_error_clear () ;
 int * git_error_last () ;
 int memset (int *,int ,int) ;

void test_refs_branches_remote__local_remote_returns_error(void)
{
 const char *local = "refs/heads/master";
 git_buf buf;

 git_error_clear();
 memset(&buf, 0, sizeof(git_buf));
 cl_git_fail_with(git_branch_remote_name(&buf, g_repo, local), GIT_ERROR);
 cl_assert(git_error_last() != ((void*)0));
}
