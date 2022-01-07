
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;


 int GIT_MERGE_ANALYSIS_UP_TO_DATE ;
 int NOFASTFORWARD_BRANCH ;
 int PREVIOUS_BRANCH ;
 int analysis_from_branch (int *,int *,int ,int ) ;
 int cl_assert_equal_i (int ,int ) ;

void test_merge_analysis__between_uptodate_refs(void)
{
 git_merge_analysis_t merge_analysis;
 git_merge_preference_t merge_pref;

 analysis_from_branch(&merge_analysis, &merge_pref, NOFASTFORWARD_BRANCH, PREVIOUS_BRANCH);
 cl_assert_equal_i(GIT_MERGE_ANALYSIS_UP_TO_DATE, merge_analysis);
}
