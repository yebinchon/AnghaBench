
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * file_status; int files; } ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_TYPECHANGE ;
 int * a ;
 int * b ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int diff ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 TYPE_1__ expect ;
 int g_repo ;
 int git_diff_foreach (int ,int ,int ,int ,int ,TYPE_1__*) ;
 int git_diff_tree_to_tree (int *,int ,int *,int *,int *) ;
 int opts ;
 void* resolve_commit_oid_to_tree (int ,char*) ;

void test_diff_tree__issue_1397(void)
{


 g_repo = cl_git_sandbox_init("issue_1397");

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, "8a7ef04")) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, "7f483a7")) != ((void*)0));

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));

 cl_git_pass(git_diff_foreach(diff,
  diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &expect));

 cl_assert_equal_i(1, expect.files);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(1, expect.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_TYPECHANGE]);
}
