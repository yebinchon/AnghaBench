
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int member_0; } ;
struct TYPE_11__ {char* path; int mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;
struct TYPE_12__ {int context_lines; int interhunk_lines; } ;
typedef TYPE_3__ git_diff_options ;
typedef int git_diff ;
struct TYPE_13__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; int member_0; } ;
typedef TYPE_4__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_CONFLICTED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 TYPE_3__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_foreach_via_iterator (int *,int ,int ,int ,int ,TYPE_4__*) ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_3__*) ;
 int git_index_conflict_add (int *,int *,TYPE_2__*,TYPE_2__*) ;
 int git_index_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int ) ;

void test_diff_workdir__to_index_with_conflicts(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_index *index;
 git_index_entry our_entry = {{0}}, their_entry = {{0}};
 diff_expects exp = {0};

 g_repo = cl_git_sandbox_init("status");

 opts.context_lines = 3;
 opts.interhunk_lines = 1;


 our_entry.path = "subdir/modified_file";
 our_entry.mode = 0100644;
 git_oid_fromstr(&our_entry.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");

 their_entry.path = "subdir/rename_conflict";
 their_entry.mode = 0100644;
 git_oid_fromstr(&their_entry.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_conflict_add(index, ((void*)0), &our_entry, &their_entry));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, index, &opts));

 cl_git_pass(diff_foreach_via_iterator(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(9, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_CONFLICTED]);

 cl_assert_equal_i(7, exp.hunks);

 cl_assert_equal_i(12, exp.lines);
 cl_assert_equal_i(4, exp.line_ctxt);
 cl_assert_equal_i(3, exp.line_adds);
 cl_assert_equal_i(5, exp.line_dels);

 git_diff_free(diff);
 git_index_free(index);
}
