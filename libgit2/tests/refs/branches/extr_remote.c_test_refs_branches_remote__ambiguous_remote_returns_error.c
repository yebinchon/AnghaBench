
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;
typedef int git_buf ;


 int GIT_EAMBIGUOUS ;
 int cl_assert (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_branch_remote_name (int *,int ,int ) ;
 int git_error_clear () ;
 int * git_error_last () ;
 int git_remote_create_with_fetchspec (int **,int ,char*,char*,char*) ;
 int git_remote_free (int *) ;
 int memset (int *,int ,int) ;
 int remote_tracking_branch_name ;

void test_refs_branches_remote__ambiguous_remote_returns_error(void)
{
 git_remote *remote;
 git_buf buf;


 cl_git_pass(git_remote_create_with_fetchspec(&remote, g_repo, "addtest", "http://github.com/libgit2/libgit2", "refs/heads/*:refs/remotes/test/*"));

 git_remote_free(remote);

 git_error_clear();
 memset(&buf, 0, sizeof(git_buf));
 cl_git_fail_with(git_branch_remote_name(&buf, g_repo, remote_tracking_branch_name), GIT_EAMBIGUOUS);
 cl_assert(git_error_last() != ((void*)0));
}
