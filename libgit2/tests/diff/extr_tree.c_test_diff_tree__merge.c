
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_diff ;
struct TYPE_3__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 int * a ;
 int * b ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 TYPE_1__ expect ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_merge (int *,int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_tree_free (int *) ;
 void* resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_tree__merge(void)
{

 const char *a_commit = "605812a";
 const char *b_commit = "370fe9ec22";
 const char *c_commit = "f5b0af1fb4f5c";
 git_tree *c;
 git_diff *diff1 = ((void*)0), *diff2 = ((void*)0);

 g_repo = cl_git_sandbox_init("attr");

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, a_commit)) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, b_commit)) != ((void*)0));
 cl_assert((c = resolve_commit_oid_to_tree(g_repo, c_commit)) != ((void*)0));

 cl_git_pass(git_diff_tree_to_tree(&diff1, g_repo, a, b, ((void*)0)));

 cl_git_pass(git_diff_tree_to_tree(&diff2, g_repo, c, b, ((void*)0)));

 git_tree_free(c);

 cl_git_pass(git_diff_merge(diff1, diff2));

 git_diff_free(diff2);

 cl_git_pass(git_diff_foreach(
  diff1, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &expect));

 cl_assert_equal_i(6, expect.files);
 cl_assert_equal_i(2, expect.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(1, expect.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(3, expect.file_status[GIT_DELTA_MODIFIED]);

 cl_assert_equal_i(6, expect.hunks);

 cl_assert_equal_i(59, expect.lines);
 cl_assert_equal_i(1, expect.line_ctxt);
 cl_assert_equal_i(36, expect.line_adds);
 cl_assert_equal_i(22, expect.line_dels);

 git_diff_free(diff1);
}
