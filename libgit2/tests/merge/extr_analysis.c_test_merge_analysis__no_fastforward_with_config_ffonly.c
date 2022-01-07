
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;
typedef int git_config ;


 int GIT_MERGE_ANALYSIS_NORMAL ;
 int GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY ;
 int NOFASTFORWARD_BRANCH ;
 int analysis_from_branch (int*,int*,int *,int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_repository_config (int **,int ) ;
 int repo ;

void test_merge_analysis__no_fastforward_with_config_ffonly(void)
{
 git_config *config;
 git_merge_analysis_t merge_analysis;
 git_merge_preference_t merge_pref;

 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_set_string(config, "merge.ff", "only"));

 analysis_from_branch(&merge_analysis, &merge_pref, ((void*)0), NOFASTFORWARD_BRANCH);
 cl_assert_equal_i(GIT_MERGE_ANALYSIS_NORMAL, merge_analysis);

 cl_assert_equal_i(GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY, (merge_pref & GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY));

 git_config_free(config);
}
