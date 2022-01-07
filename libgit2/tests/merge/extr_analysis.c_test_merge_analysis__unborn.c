
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_MERGE_ANALYSIS_FASTFORWARD ;
 int GIT_MERGE_ANALYSIS_UNBORN ;
 int NOFASTFORWARD_BRANCH ;
 int analysis_from_branch (int *,int *,int *,int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_repository_path (int ) ;
 int p_unlink (int ) ;
 int repo ;

void test_merge_analysis__unborn(void)
{
 git_merge_analysis_t merge_analysis;
 git_merge_preference_t merge_pref;
 git_buf master = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&master, git_repository_path(repo), "refs/heads/master"));
 cl_must_pass(p_unlink(git_buf_cstr(&master)));

 analysis_from_branch(&merge_analysis, &merge_pref, ((void*)0), NOFASTFORWARD_BRANCH);
 cl_assert_equal_i(GIT_MERGE_ANALYSIS_FASTFORWARD|GIT_MERGE_ANALYSIS_UNBORN, merge_analysis);

 git_buf_dispose(&master);
}
