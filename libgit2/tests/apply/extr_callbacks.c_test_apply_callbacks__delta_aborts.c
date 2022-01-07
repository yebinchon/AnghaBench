
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_diff ;
struct TYPE_4__ {int delta_cb; } ;
typedef TYPE_1__ git_apply_options ;


 int DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_LOCATION_INDEX ;
 TYPE_1__ GIT_APPLY_OPTIONS_INIT ;
 int cl_git_fail_with (int,int ) ;
 int cl_git_pass (int ) ;
 int delta_abort_cb ;
 int git_apply (int ,int *,int ,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;
 int validate_index_unchanged (int ) ;
 int validate_workdir_unchanged (int ) ;

void test_apply_callbacks__delta_aborts(void)
{
 git_diff *diff;
 git_apply_options opts = GIT_APPLY_OPTIONS_INIT;

 opts.delta_cb = delta_abort_cb;

 cl_git_pass(git_diff_from_buffer(&diff,
  DIFF_MODIFY_TWO_FILES, strlen(DIFF_MODIFY_TWO_FILES)));
 cl_git_fail_with(-99,
  git_apply(repo, diff, GIT_APPLY_LOCATION_INDEX, &opts));

 validate_index_unchanged(repo);
 validate_workdir_unchanged(repo);

 git_diff_free(diff);
}
