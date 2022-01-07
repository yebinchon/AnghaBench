
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_diff ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_apply_options ;


 int DIFF_MODIFY_TWO_FILES_BINARY ;
 int GIT_APPLY_CHECK ;
 int GIT_APPLY_LOCATION_INDEX ;
 TYPE_1__ GIT_APPLY_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;
 int validate_index_unchanged (int ) ;
 int validate_workdir_unchanged (int ) ;

void test_apply_check__binary(void)
{
   git_diff *diff;
   git_apply_options opts = GIT_APPLY_OPTIONS_INIT;

   opts.flags |= GIT_APPLY_CHECK;
   cl_git_pass(git_diff_from_buffer(&diff,
       DIFF_MODIFY_TWO_FILES_BINARY,
       strlen(DIFF_MODIFY_TWO_FILES_BINARY)));
   cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_INDEX, &opts));

   validate_index_unchanged(repo);
   validate_workdir_unchanged(repo);

   git_diff_free(diff);
}
