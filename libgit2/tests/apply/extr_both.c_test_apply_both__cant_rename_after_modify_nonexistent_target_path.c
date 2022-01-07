
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 int DIFF_RENAME_AFTER_MODIFY_TARGET_PATH ;
 int GIT_APPLY_LOCATION_BOTH ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;

void test_apply_both__cant_rename_after_modify_nonexistent_target_path(void)
{
 git_diff *diff;

 cl_git_pass(git_diff_from_buffer(&diff, DIFF_RENAME_AFTER_MODIFY_TARGET_PATH,
  strlen(DIFF_RENAME_AFTER_MODIFY_TARGET_PATH)));
 cl_git_fail(git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, ((void*)0)));

 git_diff_free(diff);
}
