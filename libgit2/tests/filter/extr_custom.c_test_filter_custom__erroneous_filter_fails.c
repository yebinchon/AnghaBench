
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_list ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_BUF_INIT_CONST (int ,int ) ;
 int GIT_FILTER_TO_WORKTREE ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_filter_list_apply_to_data (int *,int *,int *) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int ,int *,char*,int ,int ) ;
 int strlen (int ) ;
 int workdir_data ;

void test_filter_custom__erroneous_filter_fails(void)
{
 git_filter_list *filters;
 git_buf out = GIT_BUF_INIT;
 git_buf in = GIT_BUF_INIT_CONST(workdir_data, strlen(workdir_data));

 cl_git_pass(git_filter_list_load(
  &filters, g_repo, ((void*)0), "villain", GIT_FILTER_TO_WORKTREE, 0));

 cl_git_fail(git_filter_list_apply_to_data(&out, filters, &in));

 git_filter_list_free(filters);
 git_buf_dispose(&out);
}
