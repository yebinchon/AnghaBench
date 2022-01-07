
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote_head ;
typedef int git_remote ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIRECTION_FETCH ;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,size_t) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo_b ;
 int git_remote_connect (int *,int ,int *,int *,int *) ;
 int git_remote_create (int **,int ,char*,int ) ;
 int git_remote_default_branch (int *,int *) ;
 int git_remote_free (int *) ;
 int git_remote_ls (int const***,size_t*,int *) ;
 int git_repository_path (int ) ;

void test_network_remote_defaultbranch__no_default_branch(void)
{
 git_remote *remote_b;
 const git_remote_head **heads;
 size_t len;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_remote_create(&remote_b, g_repo_b, "self", git_repository_path(g_repo_b)));
 cl_git_pass(git_remote_connect(remote_b, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));
 cl_git_pass(git_remote_ls(&heads, &len, remote_b));
 cl_assert_equal_i(0, len);

 cl_git_fail_with(GIT_ENOTFOUND, git_remote_default_branch(&buf, remote_b));

 git_remote_free(remote_b);
}
