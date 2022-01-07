
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 int DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_LOCATION_BOTH ;
 int GIT_EAPPLYFAIL ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_is_chmod_supported () ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int p_chmod (char*,int) ;
 int repo ;
 int strlen (int ) ;

void test_apply_both__index_mode_must_match_workdir(void)
{
 git_diff *diff;

 if (!cl_is_chmod_supported())
  clar__skip();


 cl_must_pass(p_chmod("merge-recursive/asparagus.txt", 0755));

 cl_git_pass(git_diff_from_buffer(&diff, DIFF_MODIFY_TWO_FILES,
     strlen(DIFF_MODIFY_TWO_FILES)));
 cl_git_fail_with(GIT_EAPPLYFAIL, git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, ((void*)0)));

 git_diff_free(diff);
}
