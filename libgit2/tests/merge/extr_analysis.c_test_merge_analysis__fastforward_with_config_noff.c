
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;
typedef int git_config ;


 int FASTFORWARD_BRANCH ;
 int GIT_MERGE_ANALYSIS_FASTFORWARD ;
 int GIT_MERGE_ANALYSIS_NORMAL ;
 int GIT_MERGE_PREFERENCE_NO_FASTFORWARD ;
 int analysis_from_branch (int*,int*,int *,int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_repository_config (int **,int ) ;
 int repo ;

void test_merge_analysis__fastforward_with_config_noff(void)
{
 git_config *config;
 git_merge_analysis_t merge_analysis;
 git_merge_preference_t merge_pref;

 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_set_string(config, "merge.ff", "false"));

 analysis_from_branch(&merge_analysis, &merge_pref, ((void*)0), FASTFORWARD_BRANCH);
 cl_assert_equal_i(GIT_MERGE_ANALYSIS_NORMAL|GIT_MERGE_ANALYSIS_FASTFORWARD, merge_analysis);

 cl_assert_equal_i(GIT_MERGE_PREFERENCE_NO_FASTFORWARD, (merge_pref & GIT_MERGE_PREFERENCE_NO_FASTFORWARD));

 git_config_free(config);
}
