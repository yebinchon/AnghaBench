
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_index ;
struct TYPE_7__ {int context_lines; int interhunk_lines; int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_8__ {int * file_status; int files; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_UNMODIFIED ;
 size_t GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int * g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_open (int **,char*) ;
 int memset (TYPE_2__*,int ,int) ;

void test_diff_workdir__with_stale_index(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_index *idx = ((void*)0);
 diff_expects exp;

 g_repo = cl_git_sandbox_init("status");
 cl_git_pass(git_repository_index(&idx, g_repo));


 {
  git_repository *r2;
  git_index *idx2;
  cl_git_pass(git_repository_open(&r2, "status"));
  cl_git_pass(git_repository_index(&idx2, r2));
  cl_git_pass(git_index_add_bypath(idx2, "new_file"));
  cl_git_pass(git_index_add_bypath(idx2, "subdir/new_file"));
  cl_git_pass(git_index_remove_bypath(idx2, "staged_new_file"));
  cl_git_pass(git_index_remove_bypath(idx2, "staged_changes_file_deleted"));
  cl_git_pass(git_index_write(idx2));
  git_index_free(idx2);
  git_repository_free(r2);
 }

 opts.context_lines = 3;
 opts.interhunk_lines = 1;
 opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED | GIT_DIFF_INCLUDE_UNMODIFIED;



 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, idx, &opts));

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(17, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_UNTRACKED]);
 cl_assert_equal_i(5, exp.file_status[GIT_DELTA_UNMODIFIED]);

 git_diff_free(diff);







 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 git_diff_free(diff);

 cl_assert_equal_i(16, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_UNTRACKED]);
 cl_assert_equal_i(6, exp.file_status[GIT_DELTA_UNMODIFIED]);

 git_index_free(idx);
}
