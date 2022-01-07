
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;


 int GIT_MERGE_ANALYSIS_NORMAL ;
 int NOFASTFORWARD_BRANCH ;
 int analysis_from_branch (int *,int *,int *,int ) ;
 int cl_assert_equal_i (int ,int ) ;

void test_merge_analysis__no_fastforward(void)
{
 git_merge_analysis_t merge_analysis;
 git_merge_preference_t merge_pref;

 analysis_from_branch(&merge_analysis, &merge_pref, ((void*)0), NOFASTFORWARD_BRANCH);
 cl_assert_equal_i(GIT_MERGE_ANALYSIS_NORMAL, merge_analysis);
}
