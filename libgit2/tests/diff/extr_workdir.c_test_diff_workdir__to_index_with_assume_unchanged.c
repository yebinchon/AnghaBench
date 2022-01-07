
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ie ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_10__ {int * file_status; int files; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 int GIT_DIFF_OPTIONS_INIT ;
 int GIT_INDEX_ENTRY_VALID ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 int memset (TYPE_2__*,int ,int) ;

void test_diff_workdir__to_index_with_assume_unchanged(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_index *idx = ((void*)0);
 diff_expects exp;
 const git_index_entry *iep;
 git_index_entry ie;

 g_repo = cl_git_sandbox_init("status");



 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(8, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_MODIFIED]);
 git_diff_free(diff);



 cl_git_pass(git_repository_index(&idx, g_repo));

 cl_assert((iep = git_index_get_bypath(idx, "modified_file", 0)) != ((void*)0));
 memcpy(&ie, iep, sizeof(ie));
 ie.flags |= GIT_INDEX_ENTRY_VALID;
 cl_git_pass(git_index_add(idx, &ie));

 cl_assert((iep = git_index_get_bypath(idx, "file_deleted", 0)) != ((void*)0));
 memcpy(&ie, iep, sizeof(ie));
 ie.flags |= GIT_INDEX_ENTRY_VALID;
 cl_git_pass(git_index_add(idx, &ie));

 cl_git_pass(git_index_write(idx));
 git_index_free(idx);



 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(6, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_MODIFIED]);
 git_diff_free(diff);

}
