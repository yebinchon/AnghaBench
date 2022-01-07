
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_4__ {int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_IGNORED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_UNTRACKED ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_1__*) ;
 int git_diff_index_to_workdir (int **,int ,int *,int const*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void basic_diff_status(git_diff **out, const git_diff_options *opts)
{
 diff_expects exp;

 cl_git_pass(git_diff_index_to_workdir(out, g_repo, ((void*)0), opts));

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_foreach(
  *out, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(13, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_IGNORED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_UNTRACKED]);
}
