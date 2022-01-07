
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EUNMERGED ;
 int GIT_RESET_SOFT ;
 int KNOWN_COMMIT_IN_BARE_REPO ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_repository_detach_head (int ) ;
 int git_repository_path (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_revparse_single (int *,int ,int ) ;
 int p_unlink (int ) ;
 int repo ;
 int target ;

void test_reset_soft__fails_when_merging(void)
{
 git_buf merge_head_path = GIT_BUF_INIT;

 cl_git_pass(git_repository_detach_head(repo));
 cl_git_pass(git_buf_joinpath(&merge_head_path, git_repository_path(repo), "MERGE_HEAD"));
 cl_git_mkfile(git_buf_cstr(&merge_head_path), "beefbeefbeefbeefbeefbeefbeefbeefbeefbeef\n");

 cl_git_pass(git_revparse_single(&target, repo, KNOWN_COMMIT_IN_BARE_REPO));

 cl_assert_equal_i(GIT_EUNMERGED, git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));
 cl_git_pass(p_unlink(git_buf_cstr(&merge_head_path)));

 git_buf_dispose(&merge_head_path);
}
