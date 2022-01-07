
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 int DIFF_REMOVE_FILE_TWICE ;
 int GIT_APPLY_LOCATION_BOTH ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;

void test_apply_both__cant_remove_file_twice(void)
{
 git_diff *diff;

 cl_git_pass(git_diff_from_buffer(&diff, DIFF_REMOVE_FILE_TWICE,
  strlen(DIFF_REMOVE_FILE_TWICE)));
 cl_git_fail(git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, ((void*)0)));

 git_diff_free(diff);
}
